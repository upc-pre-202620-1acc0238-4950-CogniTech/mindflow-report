workspace "MindFlow - Analytics & Reporting" "C4 Model - Component Diagram for the Analytics & Reporting Bounded Context" {

    model {
        user = person "MindFlow User" "A user viewing their weekly emotional analytics, mood calendar, word cloud, or exporting a personal report." "Person"

        geminiApi = softwareSystem "AI Advisory Service" "Generates the narrative weekly insight text." "External"
        database = softwareSystem "Database" "Stores analytics_caches and word_clouds, and is read directly from Journal entries and Subscriptions." "External"
        redisCache = softwareSystem "Redis Cache" "Short-TTL cache for the computed mood calendar." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                analyticsController = component "AnalyticsController" "Exposes REST endpoints for the weekly analytics cache, the mood calendar and the word cloud." "ASP.NET Core Controller"
                analyticsHandlers = component "Analytics/WordCloud Command & Query Handlers" "Handle the CQRS commands and queries for AnalyticsCache and WordCloud, reading and writing directly against the database." "Cortex.Mediator Handlers"
                analyticsComputationService = component "AnalyticsComputationService" "Computes the weekly score and trend, the mood calendar, the word cloud and the AI-generated weekly insight, from the user's journal entries." "Application Service"
                analyticsCacheInvalidator = component "AnalyticsCacheInvalidator" "Implements the cache-invalidation port: clears a user's weekly analytics cache, word cloud and mood-calendar cache entry when their journal changes." "Application/Infrastructure Service"
                reportingController = component "ReportingController" "Exposes REST endpoints to export the user's personal report as PDF or CSV, gated to Premium subscribers." "ASP.NET Core Controller"
                reportingService = component "ReportingService" "Builds a branded PDF report and a tabular CSV export from the user's journal entries." "Application/Infrastructure Service"
            }
        }

        user -> analyticsController "Views weekly analytics, mood calendar and word cloud via" "HTTPS/JSON, JWT"
        user -> reportingController "Exports a personal report via" "HTTPS/JSON, JWT"

        analyticsController -> analyticsHandlers "Dispatches simple commands/queries to (via mediator)"
        analyticsHandlers -> database "Reads from and writes to" "EF Core / TCP"
        analyticsController -> analyticsComputationService "Delegates the weekly/mood-calendar/word-cloud computation to"
        analyticsComputationService -> database "Reads journal entries from, and writes the computed cache/word cloud to" "EF Core / TCP"
        analyticsComputationService -> geminiApi "Requests the narrative weekly insight from"
        analyticsController -> redisCache "Reads/writes the mood-calendar cache entry via" "TCP"

        analyticsCacheInvalidator -> database "Deletes the stale weekly cache and word cloud rows in" "EF Core / TCP"
        analyticsCacheInvalidator -> redisCache "Removes the stale mood-calendar cache entry from" "TCP"

        reportingController -> reportingService "Delegates export generation to"
        reportingController -> database "Verifies the caller's active Premium subscription directly in" "EF Core / TCP"
        reportingService -> database "Reads journal entries directly from" "EF Core / TCP"
    }

    views {
        component api "AnalyticsReportingComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Analytics & Reporting Bounded Context - Component Diagram"
            description "The weekly analytics/word-cloud sub-model (CQRS handlers + a heavier computation service), the cross-context cache-invalidation port, and the Premium-gated PDF/CSV export service."
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
