workspace "MindFlow - Analytics & Reporting" "C4 Model - Component Diagram of the Analytics & Reporting bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                analyticsController = component "AnalyticsController" "Only component of the context (no domain, application or infrastructure layers). api/v1/analytics: GET dashboard (from/to, default 30 days), GET report.csv, GET report.pdf. Computes everything on each request; no cache." "ASP.NET Core Controller" "Component"
                questPdf = component "QuestPDF" "In-process PDF generation (A4) used by the controller." "Library (QuestPDF)" "Component"
                journalBc = component "Journal" "Owner of journal_entries." "Bounded context (not detailed)" "OtherBC"
                habitsBc = component "Habits & Wellness" "Owner of habits and habit_completion_logs." "Bounded context (not detailed)" "OtherBC"
            }
        }
        user -> analyticsController "Reads the dashboard and downloads reports through" "HTTPS/JSON, CSV, PDF" "Relationship"
        analyticsController -> questPdf "Renders the PDF with" "" "Relationship"
        analyticsController -> database "Reads journal_entries, habits, habit_completion_logs directly" "EF Core (shared context)" "Relationship"
        analyticsController -> journalBc "Aggregates entries owned by" "" "Relationship"
        analyticsController -> habitsBc "Aggregates habits owned by" "" "Relationship"
    }

    views {
        component api "AnalyticsComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - Analytics & Reporting Bounded Context - Component Diagram"
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