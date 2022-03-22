import Fluent
import Vapor

//app.get app.post app.on

func routes(_ app: Application) throws {
    app.get { req in
        return "It works!"
    }

    app.get("hello") { req -> String in
        return "Hello, world!"
    }
    
    //for random number
    app.get("random", ":number") { req -> String in
        
        guard let number =  req.parameters.get("number", as: Int.self)
        else
        {
            throw Abort(.badRequest)
        }
        return "\(Int.random(in: 0...number))"
    }

    try app.register(collection: TodoController())
}
