workspace "MindFlow - Mobile Application (Android)" "C4 Model - Component Diagram of the Android app as built" {

    model {
        user = person "MindFlow User" "Uses the app on an Android phone." "Person"
        api = softwareSystem "MindFlow Web Services API" "REST API of the 8 bounded contexts (JWT)." "External"
        googleId = softwareSystem "Google Identity" "Issues the Google ID token (Credential Manager)." "External"
        stripe = softwareSystem "Stripe Checkout" "Hosted payment page opened in a Chrome Custom Tab." "External"

        app = softwareSystem "MindFlow Mobile" "Native Android application." {
            localDb = container "Local Database" "Offline cache: users, journal_entries, habits, habit_logs." "SQLite" "Database"
            mobile = container "Mobile Application (Android)" "Single Gradle module :app. Kotlin 2.2, Jetpack Compose (Material 3), minSdk 26." "Kotlin, Jetpack Compose" {
                screens = component "Screens" "Login, Register, Dashboard, Journal, Habits, Analytics, Settings, Plans. Bottom navigation with 5 tabs." "Jetpack Compose + Navigation Compose"
                chatWidget = component "Chat Widget" "Floating chat available on every authenticated screen; ChatViewModel lives at Activity level." "Jetpack Compose"
                viewModels = component "ViewModels" "AuthViewModel, HomeViewModel, JournalViewModel, HabitsViewModel, AnalyticsViewModel, SettingsViewModel, PlansViewModel. Hold UI state and part of the business rules." "AndroidX ViewModel"
                repositories = component "Repositories" "AuthRepository, JournalRepository, HabitRepository: combine remote calls with the local database." "Kotlin classes (data/repository)"
                useCases = component "Use cases and ports (partial)" "AuthUseCases and ChatUseCases are used; the Journal, Habit, Profile and Dashboard use cases are built but not connected to any screen." "Clean Architecture layer (application, domain, infrastructure/adapter)"
                apiClient = component "ApiClient" "Retrofit interfaces AuthApi, JournalApi, ChatApi, SubscriptionApi, AiInsightsApi; OkHttp interceptor adds the Bearer token; JSON snake_case." "Retrofit, OkHttp, kotlinx.serialization"
                sqlite = component "MindFlowDatabase" "SQLiteOpenHelper, schema version 2, tables users, journal_entries, habits, habit_logs. Upgrade drops and recreates." "SQLiteOpenHelper"
                session = component "SessionManager" "Stores the JWT, user id and the settings switches (dark mode, PIN flag, reminders flag) unencrypted." "SharedPreferences"
                localAi = component "LocalAiResponder" "Fallback when the API fails: keyword sentiment classification and canned chat replies (Spanish)." "Kotlin object"
                exporter = component "ReportExporter" "Builds the PDF and CSV on the device and shares them with the Android share sheet." "PdfDocument, FileProvider"
                googleSignIn = component "Google Sign-In" "Gets the Google ID token with Credential Manager and exchanges it at the API." "androidx.credentials"
                checkout = component "Checkout launcher" "Opens the checkout URL returned by the API in a Chrome Custom Tab and refreshes the plan on resume." "androidx.browser"
                di = component "MindFlowApplication" "Composition root: creates database, session, ApiClient, repositories and use cases (manual dependency injection)." "Application class"
            }
        }

        user -> screens "Uses" "Touch UI"
        user -> chatWidget "Chats with the AI through" "Touch UI"
        screens -> viewModels "Observes state of"
        chatWidget -> useCases "Sends messages through" "ChatUseCases"
        viewModels -> repositories "Calls"
        viewModels -> useCases "Calls (Auth only)"
        viewModels -> exporter "Exports reports with"
        viewModels -> googleSignIn "Starts sign-in with"
        viewModels -> checkout "Starts checkout with"
        useCases -> repositories "Wraps through adapters"
        repositories -> apiClient "Remote calls"
        repositories -> sqlite "Reads and writes the cache"
        repositories -> localAi "Falls back to when the API fails"
        repositories -> session "Reads and stores the token"
        apiClient -> session "Reads the token from"
        apiClient -> api "Calls" "HTTPS/JSON, JWT"
        sqlite -> localDb "Persists in" "SQLite"
        googleSignIn -> googleId "Requests the ID token from" "Credential Manager"
        checkout -> stripe "Opens" "Chrome Custom Tab"
        di -> repositories "Creates"
    }

    views {
        component mobile "MobileComponents" {
            include *
            autoLayout tb 110 150
            title "MindFlow - Mobile Application (Android) - Component Diagram"
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
            element "External" {
                background #999999
                color #ffffff
            }
            relationship "Relationship" {
                dashed false
                color #444444
            }
        }
    }
}
