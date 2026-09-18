workspace "MindFlow" "C4 Model - Software Architecture Deployment Diagram" {

    model {
        user = person "MindFlow User" "A university student or young professional who journals, tracks habits, and chats with the AI assistant." "Person"
        visitor = person "Landing Page Visitor" "A prospective user browsing the MindFlow business model and value proposition." "Person"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            landingPage = container "Landing Page" "Presents the MindFlow business model, product features, and premium plans." "HTML5, CSS3, JavaScript" "WebApplication"
            mobileApp = container "Mobile Application" "Lets users journal, track habits, chat with the AI assistant, and view analytics." "Kotlin / Flutter (native or cross-platform)" "MobileApp"
            api = container "Web Services API" "Exposes MindFlow's functionality (IAM, Journal, Habits, AI Assistant, Analytics, Notifications, Subscriptions, Support) via a RESTful API." "ASP.NET Core / .NET 10" "WebApplication"
            database = container "Database" "Stores users, journal entries, habits, chat conversations, subscriptions, and support tickets." "MySQL 8.0" "Database"
        }

        geminiApi = softwareSystem "Google Gemini API" "Generates AI-powered insights, chat responses, sentiment analysis, and habit suggestions." "External"
        stripe = softwareSystem "Stripe" "Processes premium subscription payments and manages billing webhooks." "External"
        fcm = softwareSystem "Firebase Cloud Messaging" "Delivers push notifications (reminders, wellness alerts) to the mobile app." "External"
        cloudinary = softwareSystem "Cloudinary" "Stores and serves journal media files uploaded by users." "External"
        emailService = softwareSystem "SMTP Email Service" "Sends transactional emails (password reset, support ticket confirmation)." "External"
        googleAuth = softwareSystem "Google OAuth" "Authenticates users via Google Sign-In." "External"

        user -> mobileApp "Uses" "Mobile UI"
        visitor -> landingPage "Visits" "HTTPS"
        mobileApp -> api "Makes API calls to" "HTTPS/JSON, JWT"
        api -> database "Reads from and writes to" "EF Core, TCP/3306"
        api -> geminiApi "Sends prompts to and receives AI-generated content from" "HTTPS/JSON"
        api -> stripe "Creates checkout sessions and receives webhooks from" "HTTPS/JSON"
        api -> fcm "Sends push notifications via" "HTTPS/JSON"
        api -> cloudinary "Uploads and retrieves media via" "HTTPS/JSON"
        api -> emailService "Sends transactional emails via" "SMTP"
        api -> googleAuth "Verifies identity tokens via" "HTTPS/JSON"

        deploymentEnvironment "Production" {

            deploymentNode "User's Mobile Device" "Physical Android or iOS device used for the final demonstration." "Android OS / iOS" {
                containerInstance mobileApp
            }

            deploymentNode "GitHub Pages" "Static site hosting platform, served over a global CDN via HTTPS." "GitHub Pages" {
                containerInstance landingPage
            }

            deploymentNode "Microsoft Azure" "Cloud provider hosting the MindFlow backend infrastructure." "Microsoft Azure" {
                deploymentNode "Azure App Service" "PaaS running the containerized Web Services API." "Linux App Service Plan, Docker container (.NET 10 runtime)" {
                    containerInstance api
                }
                deploymentNode "Azure Database for MySQL" "Managed relational database service (Flexible Server)." "Azure Database for MySQL 8.0" {
                    containerInstance database
                }
            }

            deploymentNode "Third-Party Cloud Services" "External SaaS platforms consumed exclusively by the Web Services API." "" {
                deploymentNode "Google Cloud / Firebase" "Third-party infrastructure operated by Google." "Google Cloud Platform" {
                    softwareSystemInstance geminiApi
                    softwareSystemInstance fcm
                    softwareSystemInstance googleAuth
                }

                deploymentNode "Stripe Cloud" "Third-party infrastructure operated by Stripe." "Stripe Platform" {
                    softwareSystemInstance stripe
                }

                deploymentNode "Cloudinary Cloud" "Third-party infrastructure operated by Cloudinary." "Cloudinary CDN" {
                    softwareSystemInstance cloudinary
                }

                deploymentNode "Email Provider" "Third-party SMTP relay used for transactional emails." "SMTP Server" {
                    softwareSystemInstance emailService
                }
            }
        }
    }

    views {
        deployment mindflow "Production" "MindFlowDeploymentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Deployment Diagram (Production)"
            description "Physical distribution of the MindFlow system: Landing Page on GitHub Pages, Mobile App on the user's device, Web Services API on Azure App Service, MySQL on Azure Database for MySQL, and third-party integrations (Gemini, Stripe, FCM, Cloudinary, SMTP, Google OAuth)."
        }

        styles {
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }
            element "WebApplication" {
                background #1168bd
                color #ffffff
            }
            element "MobileApp" {
                shape MobileDeviceLandscape
                background #1168bd
                color #ffffff
            }
            element "Database" {
                shape Cylinder
                background #438dd5
                color #ffffff
            }
            element "External" {
                background #999999
                color #ffffff
            }
            element "Infrastructure Node" {
                background #ffffff
                color #000000
            }
        }
    }

}
