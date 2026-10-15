workspace "MindFlow" "C4 Model - Context, Container and Deployment diagrams (as built, planned elements dashed)" {

    model {
        user = person "MindFlow User" "University student or young professional who journals, tracks habits, chats with the AI assistant and reviews analytics." "Person"
        visitor = person "Landing Page Visitor" "Prospective user browsing the product and the premium plan." "Person"
        staff = person "Support Staff / Admin" "Team member with the Support or Admin role who answers tickets and maintains the wellness exercise catalog through the API." "Person"

        mindflow = softwareSystem "MindFlow" "Emotional well-being platform: journal, habits, AI assistant, analytics, subscriptions and support." {
            landingPage = container "Landing Page" "Presents the product, its features and the premium plan." "HTML5, CSS3, JavaScript" "WebApplication"
            mobileApp = container "Mobile Application (Android)" "Native Android app: journal, habits, AI chat, analytics, plans and settings. Includes local fallback logic." "Kotlin 2.2, Jetpack Compose, Retrofit" "MobileApp"
            localDb = container "Local Database" "Offline cache of the profile, journal entries, habits and habit logs on the device." "SQLite (SQLiteOpenHelper)" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts (IAM, Journal, AI Assistant, Habits & Wellness, Analytics & Reporting, Notifications, Subscriptions, Support). JWT authentication." "ASP.NET Core, .NET 10, EF Core" "WebApplication"
            database = container "Database" "Persists the data of all bounded contexts. Journal and chat content encrypted with AES-256." "MySQL 8" "Database"
            cache = container "Cache" "Caches each user's habit list (2 minutes)." "Redis" "Database"
        }

        gemini = softwareSystem "Google Gemini API" "Generates empathic responses, chat replies, stress advice and habit suggestions." "External"
        stripe = softwareSystem "Stripe" "Hosts the checkout page and sends payment webhooks." "External"
        googleId = softwareSystem "Google Identity" "Issues Google ID tokens and validates them (Google Sign-In)." "External"
        cloudinary = softwareSystem "Cloudinary" "Stores media attached to journal entries." "External"
        smtp = softwareSystem "SMTP Email Service" "Delivers password-reset and notification emails." "External"
        fcm = softwareSystem "Firebase Cloud Messaging" "Push notifications to devices." "External,Planned"

        # --- Context level relationships (system) ---
        user -> mindflow "Journals, tracks habits and chats with the AI using"
        visitor -> mindflow "Learns about the product in"
        staff -> mindflow "Manages tickets and the exercise catalog in"
        mindflow -> gemini "Requests AI-generated content from" "HTTPS/JSON"
        mindflow -> stripe "Creates checkout sessions and receives payment events from" "HTTPS/JSON"
        mindflow -> googleId "Validates Google ID tokens with" "HTTPS"
        mindflow -> cloudinary "Uploads journal media to" "HTTPS"
        mindflow -> smtp "Sends emails through" "SMTP"
        mindflow -> fcm "Will send push notifications through" "HTTPS" "Planned"

        # --- Container level relationships ---
        user -> mobileApp "Uses" "Touch UI"
        visitor -> landingPage "Visits" "HTTPS"
        staff -> api "Manages tickets and exercises through" "HTTPS/JSON, Swagger UI"
        mobileApp -> localDb "Reads and writes the offline cache" "SQLite"
        mobileApp -> api "Sign-in, journal entries, chat, habit suggestions, stress check, subscription" "HTTPS/JSON, JWT"
        mobileApp -> googleId "Obtains the Google ID token from" "Credential Manager"
        mobileApp -> stripe "Opens the checkout page in" "Chrome Custom Tab"
        api -> database "Reads and writes" "EF Core, TCP/3306"
        api -> cache "Reads and writes the habit list" "StackExchange.Redis"
        api -> gemini "Requests AI-generated content from" "HTTPS/JSON"
        api -> stripe "Creates checkout sessions; receives signed webhooks" "HTTPS/JSON"
        api -> googleId "Validates Google ID tokens with" "Google.Apis.Auth"
        api -> cloudinary "Uploads journal media to" "HTTPS"
        api -> smtp "Sends emails through" "SMTP"
        api -> fcm "Will send push notifications through" "HTTPS" "Planned"

        deploymentEnvironment "Production" {
            deploymentNode "User's Android Device" "Physical device used by the end user." "Android 8.0+ (API 26+)" {
                containerInstance mobileApp
                containerInstance localDb
            }
            deploymentNode "GitHub Pages" "Static hosting of the landing page." "GitHub Pages" {
                containerInstance landingPage
            }
            deploymentNode "Railway" "Cloud platform hosting the backend in a single project." "Railway" {
                deploymentNode "API Service" "Built from the repository Dockerfile and deployed from the develop branch." "Docker container (.NET 10 runtime)" {
                    containerInstance api
                }
                deploymentNode "MySQL Service" "Managed relational database." "MySQL 8" {
                    containerInstance database
                }
                deploymentNode "Redis Service" "Managed in-memory cache." "Redis" {
                    containerInstance cache
                }
            }
            deploymentNode "Third-Party Cloud Services" "External SaaS consumed by the Web Services API." "" {
                deploymentNode "Google Cloud" "Operated by Google." "Google Cloud Platform" {
                    softwareSystemInstance gemini
                    softwareSystemInstance googleId
                }
                deploymentNode "Firebase" "Operated by Google. Not integrated yet." "Firebase" "Planned" {
                    softwareSystemInstance fcm
                }
                deploymentNode "Stripe Cloud" "Operated by Stripe." "Stripe Platform" {
                    softwareSystemInstance stripe
                }
                deploymentNode "Cloudinary Cloud" "Operated by Cloudinary." "Cloudinary CDN" {
                    softwareSystemInstance cloudinary
                }
                deploymentNode "Email Provider" "SMTP relay configured through environment variables." "SMTP server" {
                    softwareSystemInstance smtp
                }
            }
        }
    }

    views {
        systemContext mindflow "MindFlowSystemContext" {
            include *
            autoLayout tb 200 200
            title "MindFlow - System Context Diagram"
        }
        container mindflow "MindFlowContainers" {
            include *
            autoLayout tb 200 220
            title "MindFlow - Container Diagram"
        }
        deployment mindflow "Production" "MindFlowDeployment" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Deployment Diagram (Production)"
        }

        styles {
            element "Person" {
                shape Person
                background #08427b
                color #ffffff
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
            element "WebApplication" {
                shape WebBrowser
            }
            element "MobileApp" {
                shape MobileDeviceLandscape
            }
            element "Database" {
                shape Cylinder
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
