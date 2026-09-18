workspace "MindFlow - IAM" "C4 Model - Component Diagram for the IAM Bounded Context" {

    model {
        user = person "MindFlow User" "A registered or prospective user signing up, signing in, or managing their profile." "Person"

        emailProvider = softwareSystem "SMTP Email Service" "Delivers the password-reset email." "External"
        googleOAuth = softwareSystem "Google OAuth" "Validates Google Sign-In credentials." "External"
        database = softwareSystem "Database" "Stores the users and password_reset_tokens tables." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                usersController = component "UsersController" "Exposes REST endpoints for sign-up, sign-in, Google auth, password recovery, profile, and PIN management." "ASP.NET Core Controller"
                userCommandService = component "UserCommandService" "Orchestrates IAM business flows: validates input, creates/updates User aggregates, and coordinates infrastructure ports." "Application Service"
                userRepository = component "UserRepository" "Implements IUserRepository using EF Core over the users table." "EF Core Repository"
                tokenService = component "TokenService" "Generates signed JWT access tokens for authenticated users." "Infrastructure Service"
                emailService = component "EmailService" "Sends password-reset emails via SMTP." "Infrastructure Service"
                googleAuthService = component "GoogleAuthService" "Validates Google Sign-In credentials via Google.Apis.Auth." "Infrastructure Service"
            }
        }

        user -> usersController "Makes authenticated / unauthenticated requests to" "HTTPS/JSON"
        usersController -> userCommandService "Delegates commands to"
        userCommandService -> userRepository "Reads and writes User aggregates via"
        userCommandService -> tokenService "Requests JWT generation from"
        userCommandService -> emailService "Requests password-reset emails from"
        userCommandService -> googleAuthService "Requests Google credential validation from"
        userRepository -> database "Reads from and writes to" "EF Core / TCP"
        emailService -> emailProvider "Sends emails via" "SMTP"
        googleAuthService -> googleOAuth "Verifies identity tokens via" "HTTPS/JSON"
    }

    views {
        component api "IAMComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - IAM Bounded Context - Component Diagram"
            description "Decomposition of the Web Services API container into the components that implement the IAM bounded context."
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
