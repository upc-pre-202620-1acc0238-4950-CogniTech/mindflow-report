workspace "MindFlow - AI Assistant" "C4 Model - Component Diagram for the AI Assistant Bounded Context" {

    model {
        user = person "MindFlow User" "A user chatting with the AI assistant or rating AI-generated content." "Person"

        geminiApi = softwareSystem "Google Gemini API" "Generates AI content for every use case in the system." "External"
        database = softwareSystem "Database" "Stores conversations, chat_messages, ai_feedback_ratings, and ai_metric_logs." "External"
        journalBc = softwareSystem "Journal (Bounded Context)" "Owns JournalEntry, queried to validate rated content." "External"
        habitsBc = softwareSystem "Habits & Wellness (Bounded Context)" "Owns Habit, queried to validate rated content; also consumes AI-generated suggestions and stress advice." "External"
        analyticsBc = softwareSystem "Analytics & Reporting (Bounded Context)" "Consumes AI-generated weekly summaries." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                chatController = component "ChatController" "Exposes REST endpoints for conversations and messages." "ASP.NET Core Controller"
                aiFeedbackController = component "AiFeedbackController" "Exposes REST endpoints for submitting and reading AI content ratings." "ASP.NET Core Controller"
                chatService = component "ChatService" "Orchestrates conversation creation and message exchange, requesting AI replies and keeping a bounded history window." "Application Service"
                aiFeedbackService = component "AiFeedbackService" "Validates and upserts a user's rating for a piece of AI-generated content." "Application Service"
                geminiService = component "GeminiService" "Builds prompts per use case and calls the Google Gemini API, logging metrics for every call." "Infrastructure Service"
            }
        }

        user -> chatController "Sends chat messages via" "HTTPS/JSON"
        user -> aiFeedbackController "Rates AI-generated content via" "HTTPS/JSON"

        chatController -> chatService "Delegates to"
        aiFeedbackController -> aiFeedbackService "Delegates to"

        chatService -> geminiService "Requests AI-generated replies from"
        chatService -> database "Reads and writes Conversation, ChatMessage via AppDbContext"

        aiFeedbackService -> database "Reads and writes AiFeedbackRating via AppDbContext"
        aiFeedbackService -> journalBc "Validates rated journal content exists in"
        aiFeedbackService -> habitsBc "Validates rated habit content exists in"

        geminiService -> geminiApi "Sends prompts to and receives responses from" "HTTPS/JSON"
        geminiService -> database "Writes AiMetricLog rows via AppDbContext"

        habitsBc -> geminiService "Requests habit suggestions and stress advice from"
        analyticsBc -> geminiService "Requests weekly summaries from"
    }

    views {
        component api "AiAssistantComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - AI Assistant Bounded Context - Component Diagram"
            description "Decomposition of the Web Services API container into the components that implement the AI Assistant bounded context, showing GeminiService's role as a cross-context shared AI service."
        }

        styles {
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }
            element "Component" {
                background #85bbf0
                color #000000
            }
            element "External" {
                background #999999
                color #ffffff
            }
        }
    }
}
