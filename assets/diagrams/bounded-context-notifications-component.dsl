workspace "MindFlow - Notifications" "C4 Model - Component Diagram of the Notifications bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        smtp = softwareSystem "SMTP Email Service" "Delivers emails." "External"
        fcm = softwareSystem "Firebase Cloud Messaging" "Push provider (not integrated)." "External,Planned"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                notificationsController = component "NotificationsController" "api/v1/notifications: GET list, GET unread-count, POST {id}/read, POST read-all." "ASP.NET Core Controller" "Component"
                notificationService = component "NotificationService" "INotificationService.CreateAsync: stores the in-app notification and tries to send an email (skipped if SMTP is not configured)." "Application Service" "Component"
                emailService = component "EmailService (IAM)" "SMTP sender owned by the IAM context." "Bounded context (not detailed)" "OtherBC"
                supportBc = component "Support" "Only caller of INotificationService." "Bounded context (not detailed)" "OtherBC"
                pushAdapter = component "Push delivery (FCM)" "Device tokens and push sending. Not implemented." "Planned" "Component,Planned"
                reminderJob = component "Reminder job" "Scheduled habit and wellness reminders. Not implemented." "Planned" "Component,Planned"
            }
        }
        user -> notificationsController "Reads and marks notifications through" "HTTPS/JSON" "Relationship"
        notificationsController -> database "Reads and updates notifications" "EF Core" "Relationship"
        supportBc -> notificationService "Creates notifications through" "INotificationService" "Relationship"
        notificationService -> database "Writes notifications" "EF Core" "Relationship"
        notificationService -> emailService "Sends email through" "" "Relationship"
        emailService -> smtp "Sends email through" "SMTP" "Relationship"
        reminderJob -> notificationService "Would trigger reminders through" "" "Planned"
        notificationService -> pushAdapter "Would deliver push through" "" "Planned"
        pushAdapter -> fcm "Would send push to" "HTTPS" "Planned"
    }

    views {
        component api "NotificationsComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - Notifications Bounded Context - Component Diagram"
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