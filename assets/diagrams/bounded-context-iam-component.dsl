workspace "MindFlow - IAM" "C4 Model - Component Diagram of the IAM bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        smtp = softwareSystem "SMTP Email Service" "Delivers emails." "External"
        googleId = softwareSystem "Google Identity" "Google ID token validation." "External"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                usersController = component "UsersController" "api/v1/users: sign-up, sign-in, google-auth, forgot/reset-password, profile (GET/PUT), DELETE account, PIN (set, verify, remove, status). Auth endpoints limited to 10 requests/min per IP." "ASP.NET Core Controller" "Component"
                userCommandService = component "UserCommandService" "Single command service: validates input (password >= 8, PIN 4-6 digits), applies User rules and orchestrates the infrastructure ports. Also deletes the account data (transaction)." "Application Service" "Component"
                userRepository = component "UserRepository" "IUserRepository over the users table (EF Core)." "EF Core Repository" "Component"
                tokenService = component "TokenService" "Issues HS256 JWT with claims user_id, email and role (7 days, no refresh token)." "Infrastructure Service" "Component"
                emailService = component "EmailService" "Sends the password-reset link (valid 15 min) and notification emails." "Infrastructure Service (SmtpClient)" "Component"
                googleAuthService = component "GoogleAuthService" "Validates the Google ID token server-side." "Infrastructure Service (Google.Apis.Auth)" "Component"
                jwtMiddleware = component "JWT Bearer Authentication" "Validates the token on every request and exposes the user_id and role claims to all contexts." "ASP.NET Core middleware" "Component"
                otherBcs = component "Other bounded contexts" "Journal, Habits, AI Assistant, Notifications, Subscriptions, Support, Analytics read the user_id claim." "Bounded context (not detailed)" "OtherBC"
            }
        }
        user -> usersController "Calls" "HTTPS/JSON" "Relationship"
        usersController -> userCommandService "Delegates commands to" "" "Relationship"
        userCommandService -> userRepository "Reads and writes User via" "" "Relationship"
        userCommandService -> tokenService "Requests the JWT from" "" "Relationship"
        userCommandService -> emailService "Requests password-reset emails from" "" "Relationship"
        userCommandService -> googleAuthService "Requests Google token validation from" "" "Relationship"
        userRepository -> database "Reads and writes users, password_reset_tokens" "EF Core" "Relationship"
        userCommandService -> database "Account deletion: removes Journal, Habits and Chat rows directly (not notifications, subscriptions or tickets)" "EF Core transaction" "Relationship"
        emailService -> smtp "Sends email through" "SMTP" "Relationship"
        googleAuthService -> googleId "Validates ID tokens with" "HTTPS" "Relationship"
        otherBcs -> jwtMiddleware "Read user_id and role claims from" "" "Relationship"
    }

    views {
        component api "IAMComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - IAM Bounded Context - Component Diagram"
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