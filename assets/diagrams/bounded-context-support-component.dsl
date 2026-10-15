workspace "MindFlow - Support" "C4 Model - Component Diagram of the Support bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        staff = person "Support Staff / Admin" "User with the Support or Admin role." "Person"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                ticketsController = component "SupportTicketsController" "api/v1/support/tickets: POST create, GET list (own, or all for staff), GET {id}, POST {id}/messages, PATCH {id} (assign, change status; roles Support or Admin). All logic lives in the controller." "ASP.NET Core Controller" "Component"
                notificationsBc = component "Notifications (INotificationService)" "Creates the in-app notification and email." "Bounded context (not detailed)" "OtherBC"
            }
        }
        user -> ticketsController "Creates and follows tickets through" "HTTPS/JSON" "Relationship"
        staff -> ticketsController "Replies, assigns and changes status through" "HTTPS/JSON, role Support/Admin" "Relationship"
        ticketsController -> database "Reads and writes support_tickets, support_messages" "EF Core" "Relationship"
        ticketsController -> notificationsBc "Notifies the creator on creation and the owner on staff replies" "INotificationService" "Relationship"
    }

    views {
        component api "SupportComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - Support Bounded Context - Component Diagram"
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