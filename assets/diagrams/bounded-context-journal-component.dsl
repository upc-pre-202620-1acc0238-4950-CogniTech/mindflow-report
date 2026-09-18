workspace "MindFlow - Journal" "C4 Model - Component Diagram for the Journal Bounded Context" {

    model {
        user = person "MindFlow User" "A user writing, editing, searching, or attaching media to journal entries." "Person"

        cloudinary = softwareSystem "Cloudinary" "Stores and serves journal media files." "External"
        database = softwareSystem "Database" "Stores journal_entries, tags, entry_tags, media, and journal_search_tokens." "External"
        analyticsBc = softwareSystem "Analytics & Reporting (Bounded Context)" "Consumes journal changes to invalidate its computed analytics cache." "External"

        mindflow = softwareSystem "MindFlow" "Allows users to track their emotional well-being through journaling, habit tracking, and AI-powered insights." {
            api = container "Web Services API" "Exposes MindFlow's functionality via a RESTful API." "ASP.NET Core / .NET 10" {

                journalController = component "JournalController" "Exposes REST endpoints for entries, tags, entry-tags, and media (including file upload)." "ASP.NET Core Controller"
                journalCommandHandlers = component "Journal Command Handlers" "Create/Update/Delete JournalEntry, Create/Delete EntryTag, Create Media, Sync offline entries. Write via IBaseRepository<T> + Unit of Work." "Cortex.Mediator Command Handlers"
                journalQueryHandlers = component "Journal Query Handlers" "Read-optimized queries directly against AppDbContext (joins, filters, full-text search)." "Cortex.Mediator Query Handlers"
                fileStorageService = component "FileStorageService" "Abstracts media storage (IFileStorageService), implemented by Cloudinary (production) or local disk (fallback)." "Infrastructure Service"
                searchIndexer = component "JournalSearchIndexer" "(Re)indexes an entry's title/content into hashed search tokens after create/update." "Infrastructure Service"
                searchTokenHasher = component "SearchTokenHasher" "Keyed HMAC-SHA256 hashing of search tokens." "Infrastructure Service"
                searchBackfillService = component "JournalSearchBackfillService" "One-time startup backfill of search tokens for pre-existing entries." "Background Service"
            }
        }

        user -> journalController "Makes authenticated requests to" "HTTPS/JSON"
        journalController -> journalCommandHandlers "Sends commands to" "Cortex.Mediator"
        journalController -> journalQueryHandlers "Sends queries to" "Cortex.Mediator"
        journalController -> fileStorageService "Uploads media files via"

        journalCommandHandlers -> database "Reads and writes JournalEntry, EntryTag, Media via IBaseRepository<T>"
        journalCommandHandlers -> analyticsBc "Invalidates the analytics cache via IAnalyticsCacheInvalidator"
        journalCommandHandlers -> searchIndexer "Triggers re-indexing after create/update"

        journalQueryHandlers -> database "Reads via AppDbContext (Include, filters, ordering)"

        searchIndexer -> searchTokenHasher "Hashes tokens via"
        searchIndexer -> database "Writes JournalSearchToken rows via AppDbContext"

        searchBackfillService -> searchIndexer "Invokes for unindexed entries at startup"
        searchBackfillService -> database "Reads unindexed JournalEntry rows via AppDbContext"

        fileStorageService -> cloudinary "Uploads files to (production)" "HTTPS/JSON"
    }

    views {
        component api "JournalComponentDiagram" {
            include *
            autoLayout tb 150 150
            title "MindFlow - Journal Bounded Context - Component Diagram"
            description "Decomposition of the Web Services API container into the components that implement the Journal bounded context, showing the CQRS split between Command and Query handlers."
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
