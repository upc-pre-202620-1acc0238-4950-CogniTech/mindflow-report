workspace "MindFlow - Support" "C4 Model - Component Diagram for the Support Bounded Context" {

    model {
        user = person "MindFlow User" "A user submitting a support ticket or checking the status of their own tickets." "Person"

        emailProvider = softwareSystem "SMTP Email Service" "External transactional email provider used to confirm ticket creation." "External"
        database = softwareSystem "Database" "Stores the support_tickets table." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                supportController = component "SupportController" "Exposes REST endpoints to create a support ticket and list the user's own tickets." "ASP.NET Core Controller"
                supportService = component "SupportService" "Implements the support port: rejects duplicate tickets submitted within a short window, persists the ticket, and sends a non-blocking confirmation email." "Application/Infrastructure Service"
            }
        }

        user -> supportController "Creates and checks tickets via" "HTTPS/JSON, JWT"

        supportController -> supportService "Delegates ticket creation and listing to"
        supportService -> database "Reads and writes SupportTicket via" "EF Core / TCP"
        supportService -> emailProvider "Sends the ticket confirmation email via" "SMTP"
    }

    views {
        component api "SupportComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Support Bounded Context - Component Diagram"
            description "A single flat service concentrates ticket creation (with short-window duplicate protection) and the fire-and-forget confirmation email."
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
