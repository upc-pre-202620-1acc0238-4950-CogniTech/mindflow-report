workspace "MindFlow - Journal" "C4 Model - Component Diagram of the Journal bounded context (as built)" {

    model {
        user = person "MindFlow User" "Authenticated user of the mobile app." "Person"
        cloudinary = softwareSystem "Cloudinary" "Media storage." "External"
        mindflow = softwareSystem "MindFlow" "Emotional well-being platform." {
            database = container "Database" "MySQL 8 - persists the data of all bounded contexts." "MySQL 8" "Database"
            cache = container "Cache" "Redis - habit list cache." "Redis" "Database"
            api = container "Web Services API" "REST API of the 8 bounded contexts." "ASP.NET Core, .NET 10" {
                journalController = component "JournalController" "api/v1/journal: entries (GET/POST/PUT/DELETE), entries/sync, tags, entry-tags, media, media/upload (10 MB)." "ASP.NET Core Controller" "Component"
                commandHandlers = component "Journal Command Handlers" "Create/Update/Delete (soft-delete) entry, Sync offline entries (last-write-wins), tags, media." "Cortex.Mediator command handlers" "Component"
                queryHandlers = component "Journal Query Handlers" "List (sort, order, limit, hashed keyword search) and get by id." "Cortex.Mediator query handlers" "Component"
                searchIndexer = component "JournalSearchIndexer" "Tokenizes title and content and stores keyed hashes, so search works without decrypting." "Infrastructure Service" "Component"
                tokenHasher = component "SearchTokenHasher" "HMAC-SHA256 keyed hashing of search tokens." "Infrastructure Service" "Component"
                backfill = component "JournalSearchBackfillService" "Runs once at startup and indexes entries without tokens." "BackgroundService (one-time)" "Component"
                fileStorage = component "CloudinaryFileStorageService" "Implements IFileStorageService; uploads attachments (image, audio, video, PDF)." "Infrastructure Service" "Component"
                invalidatorStub = component "AnalyticsCacheInvalidatorStub" "IAnalyticsCacheInvalidator implementation registered in DI; its body does nothing." "Infrastructure Service (stub)" "Component,Planned"
                aiBc = component "AI Assistant (IAiService)" "Generates the empathic response for a new entry." "Bounded context (not detailed)" "OtherBC"
            }
        }
        user -> journalController "Calls" "HTTPS/JSON" "Relationship"
        journalController -> commandHandlers "Sends commands to" "Cortex.Mediator" "Relationship"
        journalController -> queryHandlers "Sends queries to" "Cortex.Mediator" "Relationship"
        journalController -> fileStorage "Uploads media through" "" "Relationship"
        commandHandlers -> database "Writes journal_entries, tags, entry_tags, media" "EF Core" "Relationship"
        queryHandlers -> database "Reads (soft-delete filter, hashed search)" "EF Core" "Relationship"
        commandHandlers -> searchIndexer "Indexes after create/update" "" "Relationship"
        commandHandlers -> invalidatorStub "Invalidates analytics cache (no effect)" "" "Planned"
        commandHandlers -> aiBc "Requests the empathic response from" "IAiService" "Relationship"
        searchIndexer -> tokenHasher "Hashes tokens with" "" "Relationship"
        searchIndexer -> database "Writes journal_search_tokens" "EF Core" "Relationship"
        backfill -> searchIndexer "Indexes pending entries via" "" "Relationship"
        fileStorage -> cloudinary "Uploads files to" "HTTPS" "Relationship"
    }

    views {
        component api "JournalComponents" {
            include *
            autoLayout tb 120 160
            title "MindFlow - Journal Bounded Context - Component Diagram"
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