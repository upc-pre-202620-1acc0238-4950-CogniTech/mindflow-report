workspace "MindFlow - Habits & Wellness" "C4 Model - Component Diagram of the Habits & Wellness bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                habitsController = component "HabitsController" "api/v1/habits: CRUD, streak-summary, POST suggestions (AI, cached 24 h). Caches the habit list 2 min in Redis." "ASP.NET Core Controller" "Component"
                habitLogsController = component "HabitLogsController" "api/v1/habit-logs: CRUD of completion logs (no future dates)." "ASP.NET Core Controller" "Component"
                wellnessController = component "WellnessController" "POST api/v1/wellness/stress-check." "ASP.NET Core Controller" "Component"
                exercisesController = component "WellnessExercisesController" "api/v1/wellness/exercises: list for users, CRUD for the Admin role." "ASP.NET Core Controller" "Component"
                habitServices = component "Habit Command/Query Services" "Create, update, delete (physical delete) habits and logs; recompute streaks per frequency; lazy revert to Pending on read." "Application Service" "Component"
                wellnessService = component "WellnessService" "Stress check: average sentiment of up to 10 entries from the last 7 days (>=70 low, 40-69 medium, <40 high). High pauses habits, low resumes them. Requests the advice text from the AI." "Application Service" "Component"
                exerciseHandlers = component "WellnessContent Handlers" "CRUD of breathing and meditation exercises." "Cortex.Mediator handlers" "Component"
                habitRepos = component "Habit / HabitCompletionLog Repositories" "EF Core repositories." "EF Core Repository" "Component"
                journalBc = component "Journal" "Owner of journal_entries (read directly)." "Bounded context (not detailed)" "OtherBC"
                aiBc = component "AI Assistant (IAiService)" "Writes advice and suggestion texts." "Bounded context (not detailed)" "OtherBC"
            }
        }
        user -> habitsController "Manages habits through" "HTTPS/JSON" "Relationship"
        user -> habitLogsController "Logs completions through" "HTTPS/JSON" "Relationship"
        user -> wellnessController "Runs a stress check through" "HTTPS/JSON" "Relationship"
        user -> exercisesController "Browses exercises through" "HTTPS/JSON" "Relationship"
        habitsController -> habitServices "Delegates to" "" "Relationship"
        habitLogsController -> habitServices "Delegates to" "" "Relationship"
        wellnessController -> wellnessService "Delegates to" "" "Relationship"
        exercisesController -> exerciseHandlers "Sends commands/queries to" "Cortex.Mediator" "Relationship"
        habitServices -> habitRepos "Uses" "" "Relationship"
        habitRepos -> database "Reads and writes habits, habit_completion_logs" "EF Core" "Relationship"
        habitsController -> cache "Caches the habit list (2 min)" "StackExchange.Redis" "Relationship"
        habitsController -> database "Caches AI suggestions (24 h) in cached_habit_suggestions" "EF Core" "Relationship"
        habitsController -> journalBc "Reads the last 10 entries to estimate stress" "EF Core (shared context)" "Relationship"
        habitsController -> aiBc "Requests habit suggestions from" "IAiService" "Relationship"
        wellnessService -> journalBc "Reads entries of the last 7 days" "EF Core (shared context)" "Relationship"
        wellnessService -> habitRepos "Pauses and resumes habits via" "" "Relationship"
        wellnessService -> aiBc "Requests the stress advice text from" "IAiService" "Relationship"
        exerciseHandlers -> database "Reads and writes wellness_exercises" "EF Core" "Relationship"
    }

    views {
        component api "HabitsWellnessComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - Habits & Wellness Bounded Context - Component Diagram"
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