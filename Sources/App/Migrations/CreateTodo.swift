import Fluent

// to interact with database
// can handle database from here

struct CreateTodo: AsyncMigration {
    
    // prepare for migration
    func prepare(on database: Database) async throws {
        //specify schema
        try await database.schema("todos")
        //specify which fields
            .id()
            .field("title", .string, .required)
            .create()
    }
    
    // for delete the changes from database
    func revert(on database: Database) async throws {
        try await database.schema("todos").delete()
    }
}
