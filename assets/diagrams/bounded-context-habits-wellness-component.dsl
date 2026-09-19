workspace "MindFlow - Habits & Wellness" "C4 Model - Component Diagram for the Habits & Wellness Bounded Context" {

    model {
        user = person "MindFlow User" "A user tracking habits, running a stress check, or browsing wellness exercises." "Person"

        geminiService = softwareSystem "GeminiService (AI Assistant)" "Generates habit suggestions and stress advice." "External"
        database = softwareSystem "Database" "Stores habits, habit_completion_logs, cached_habit_suggestions, and wellness_exercises." "External"
        journalBc = softwareSystem "Journal (Bounded Context)" "Owns JournalEntry, read directly to estimate recent stress level." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                habitsController = component "HabitsController" "Exposes REST endpoints for habits, streak summary, and AI-generated suggestions." "ASP.NET Core Controller"
                habitLogsController = component "HabitLogsController" "Exposes REST endpoints for habit completion logs." "ASP.NET Core Controller"
                wellnessController = component "WellnessController" "Exposes the weekly stress-check endpoint." "ASP.NET Core Controller"
                wellnessExercisesController = component "WellnessExercisesController" "Exposes the public and admin-managed wellness exercise catalog." "ASP.NET Core Controller"

                habitCommandServices = component "Habit Command/Query Services" "Create/Update/Delete habits and logs, recomputing streaks per frequency; reads apply lazy consistency at query time." "Application Service"
                wellnessService = component "WellnessService" "Orchestrates the stress check: scores recent journal sentiment, pauses/resumes habits, requests AI advice." "Application Service"
                wellnessContentHandlers = component "WellnessContent Command/Query Handlers" "CRUD of breathing/meditation exercises." "Cortex.Mediator Handlers"

                habitRepository = component "HabitRepository / HabitCompletionLogRepository" "EF Core repositories for Habit and HabitCompletionLog." "EF Core Repository"
            }
        }

        user -> habitsController "Manages habits via" "HTTPS/JSON"
        user -> habitLogsController "Logs habit completions via" "HTTPS/JSON"
        user -> wellnessController "Runs a stress check via" "HTTPS/JSON"
        user -> wellnessExercisesController "Browses wellness exercises via" "HTTPS/JSON"

        habitsController -> habitCommandServices "Delegates to"
        habitLogsController -> habitCommandServices "Delegates to"
        wellnessController -> wellnessService "Delegates to"
        wellnessExercisesController -> wellnessContentHandlers "Sends commands/queries to" "Cortex.Mediator"

        habitCommandServices -> habitRepository "Reads and writes via"
        habitRepository -> database "Reads from and writes to"

        habitsController -> geminiService "Requests habit suggestions from"
        wellnessService -> geminiService "Requests stress advice from"

        wellnessService -> habitRepository "Pauses/resumes habits via"
        wellnessService -> journalBc "Reads recent JournalEntries from"

        wellnessContentHandlers -> database "Reads from and writes to"
    }

    views {
        component api "HabitsWellnessComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Habits & Wellness Bounded Context - Component Diagram"
            description "Decomposition of the Web Services API container into the components that implement the Habits & Wellness bounded context, spanning its three sub-modules (habits, WellnessEngine, WellnessContent)."
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
