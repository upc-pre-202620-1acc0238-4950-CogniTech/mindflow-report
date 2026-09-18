workspace "MindFlow - Notifications" "C4 Model - Component Diagram for the Notifications Bounded Context" {

    model {
        user = person "MindFlow User" "A user viewing their notification inbox, or registering/unregistering a device for push notifications." "Person"

        fcmApi = softwareSystem "Push Notification Service" "External push delivery provider (FCM) used to deliver notifications to registered devices." "External"
        database = softwareSystem "Database" "Stores notifications and device_tokens." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                notificationsController = component "NotificationsController" "Exposes REST endpoints to list notifications, mark them as read, and register/unregister a device token, accessing persistence directly." "ASP.NET Core Controller"
                notificationService = component "NotificationService (FCM adapter)" "Implements the notification port: records every notification sent and delivers it as a push message to the user's registered devices." "Application/Infrastructure Service"
            }

            hydrationScheduler = container "Hydration Reminder Job" "Periodically triggers a wellness reminder for every registered user." "ASP.NET Core BackgroundService"
        }

        user -> notificationsController "Manages notifications and devices via" "HTTPS/JSON, JWT"

        notificationsController -> database "Reads and writes Notification/DeviceToken directly via" "EF Core / TCP"

        hydrationScheduler -> notificationService "Triggers a broadcast reminder every 2 hours via"
        notificationService -> database "Records each Notification in, and reads DeviceToken from" "EF Core / TCP"
        notificationService -> fcmApi "Sends the push payload to each registered device via" "HTTPS/JSON, OAuth2"
    }

    views {
        component api "NotificationsComponentDiagram" {
            include notificationsController notificationService user fcmApi database
            autoLayout tb 150 150
            title "MindFlow - Notifications Bounded Context - Component Diagram"
            description "The notification inbox/device registry (direct persistence access) and the push-delivery service, triggered on demand or by the hydration reminder job."
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
