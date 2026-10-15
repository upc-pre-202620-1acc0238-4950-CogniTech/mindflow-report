workspace "MindFlow - Subscriptions" "C4 Model - Component Diagram of the Subscriptions bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        stripe = softwareSystem "Stripe" "Payment provider." "External"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                subscriptionsController = component "SubscriptionsController" "api/v1/subscriptions: GET plans (public, static list), GET me, POST checkout, POST webhook (signed), POST demo/plan/{plan}. All logic lives in the controller. No cancel endpoint." "ASP.NET Core Controller" "Component"
                stripeClient = component "Stripe HTTP client" "Named HttpClient 'Stripe' (Basic auth). Webhook signature checked with HMAC-SHA256, 300 s tolerance." "Infrastructure (HttpClient)" "Component"
            }
        }
        user -> subscriptionsController "Views plans and starts checkout through" "HTTPS/JSON" "Relationship"
        stripe -> subscriptionsController "Sends signed payment events to" "HTTPS webhook" "Relationship"
        subscriptionsController -> stripeClient "Creates checkout sessions with" "" "Relationship"
        stripeClient -> stripe "Calls the Stripe API" "HTTPS/JSON" "Relationship"
        subscriptionsController -> database "Reads and writes subscriptions" "EF Core" "Relationship"
    }

    views {
        component api "SubscriptionsComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - Subscriptions Bounded Context - Component Diagram"
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