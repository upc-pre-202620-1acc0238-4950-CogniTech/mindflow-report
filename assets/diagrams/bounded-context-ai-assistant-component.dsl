workspace "MindFlow - AI Assistant" "C4 Model - Component Diagram of the AI Assistant bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        gemini = softwareSystem "Google Gemini API" "Generative AI provider." "External"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                chatController = component "ChatController" "api/v1/chat: conversations (POST max 5000 chars, GET, DELETE) and messages (POST, GET)." "ASP.NET Core Controller" "Component"
                feedbackController = component "AiFeedbackController" "api/v1/ai-feedback: submit rating (1-5), list own ratings, summary." "ASP.NET Core Controller" "Component"
                chatService = component "ChatService" "Creates conversations and exchanges messages; sends the last 10 messages as history; fixed fallback text if the AI fails." "Application Service" "Component"
                feedbackService = component "AiFeedbackService" "Validates content type (journal or habit) and rating, and upserts the rating." "Application Service" "Component"
                geminiService = component "GeminiService" "Implements IAiService: empathic response, chat reply, stress advice, habit suggestions and weekly summary (no caller). Retries once on 503/429, returns empty text on failure, logs AiMetricLog." "Infrastructure Service (HttpClient)" "Component"
                journalBc = component "Journal" "Owner of journal_entries." "Bounded context (not detailed)" "OtherBC"
                habitsBc = component "Habits & Wellness" "Owner of habits." "Bounded context (not detailed)" "OtherBC"
            }
        }
        user -> chatController "Chats through" "HTTPS/JSON" "Relationship"
        user -> feedbackController "Rates AI content through" "HTTPS/JSON" "Relationship"
        chatController -> chatService "Delegates to" "" "Relationship"
        feedbackController -> feedbackService "Delegates to" "" "Relationship"
        chatService -> geminiService "Requests chat replies from" "IAiService" "Relationship"
        chatService -> database "Writes conversations and chat_messages (content AES-256)" "EF Core" "Relationship"
        feedbackService -> database "Writes ai_feedback_ratings" "EF Core" "Relationship"
        feedbackService -> journalBc "Reads journal entries directly to validate the rated content" "EF Core (shared context)" "Relationship"
        feedbackService -> habitsBc "Reads habits directly to validate the rated content" "EF Core (shared context)" "Relationship"
        geminiService -> gemini "Sends prompts to" "HTTPS/JSON" "Relationship"
        geminiService -> database "Writes ai_metric_logs" "EF Core" "Relationship"
        journalBc -> geminiService "Requests empathic responses from" "IAiService" "Relationship"
        habitsBc -> geminiService "Requests stress advice and habit suggestions from" "IAiService" "Relationship"
    }

    views {
        component api "AiAssistantComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - AI Assistant Bounded Context - Component Diagram"
        }
        styles {
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "Database" {
                shape Cylinder
            }
            element "Component" {
                background #85bbf0
                color #000000
            }
            element "OtherBC" {
                background #c9d6e4
                color #333333
            }
            element "External" {
                background #999999
                color #ffffff
            }
            element "Planned" {
                background #e8e8e8
                color #555555
                border dashed
            }
            relationship "Relationship" {
                dashed false
                color #444444
            }
            relationship "Planned" {
                dashed true
                color #888888
            }
        }

    }
}