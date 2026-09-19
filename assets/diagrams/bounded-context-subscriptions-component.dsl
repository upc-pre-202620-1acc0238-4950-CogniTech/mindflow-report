workspace "MindFlow - Subscriptions" "C4 Model - Component Diagram for the Subscriptions Bounded Context" {

    model {
        user = person "MindFlow User" "A user starting checkout, checking their plan, or canceling their Premium subscription." "Person"

        stripeApi = softwareSystem "Payment Provider" "External payment and billing provider (Stripe) handling checkout, recurring billing and webhook notifications." "External"
        database = softwareSystem "Database" "Stores the subscriptions table." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                subscriptionsController = component "SubscriptionsController" "Exposes REST endpoints to start checkout, query the current plan, verify a completed session, cancel, and receive the payment provider's webhook." "ASP.NET Core Controller"
                subscriptionService = component "SubscriptionService (Stripe adapter)" "Implements the billing port: creates checkout sessions, verifies completed sessions, reconciles webhook events, and cancels the subscription, keeping Subscription in sync with the payment provider." "Application/Infrastructure Service"
            }
        }

        user -> subscriptionsController "Manages their subscription via" "HTTPS/JSON, JWT"
        stripeApi -> subscriptionsController "Notifies billing events via" "HTTPS/JSON webhook, signed"

        subscriptionsController -> subscriptionService "Delegates all billing use cases to"
        subscriptionService -> database "Reads and writes Subscription via" "EF Core / TCP"
        subscriptionService -> stripeApi "Creates checkout sessions, verifies sessions, and cancels subscriptions via" "HTTPS/JSON"
    }

    views {
        component api "SubscriptionsComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Subscriptions Bounded Context - Component Diagram"
            description "A single flat application/infrastructure service concentrates all billing logic, keeping the Subscription aggregate synchronized with the external payment provider through both direct calls and its webhook."
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
