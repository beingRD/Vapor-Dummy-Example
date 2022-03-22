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
    
//    let todos = app.grouped("todos")
//    // GET /users
//    todos.get { req in
//        return app.get(":id", use: todoController.index)
//    }
//    // POST /users
//    todos.post { req in
//        return app.post(":id", use: todoController.create)
//    }
    
    //for random number
//    app.get("random", ":number") { req -> String in
//
//        guard let number =  req.parameters.get("number", as: Int.self)
//        else
//        {
//            throw Abort(.badRequest)
//        }
//        return "\(Int.random(in: 0...number))"
//    }

    try app.register(collection: TodoController())
    
//   let todoController = TodoController()
//   app.get(":id", use: todoController.index)
//   app.post(":id", use: todoController.create)

}

