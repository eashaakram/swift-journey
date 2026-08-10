import Foundation


// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value types
// Value types are copied & mutated

struct Quiz {
    let title: String 
    let dateCreated: Date

    // Structs have an implicit init
    init(title: String, dateCreated: Date) {
        self.title = title
        self.dateCreated = dateCreated
    }
}

let myObject: String = "Hello, world!"

let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
// myQuiz is of type Quiz and Quiz() is function and inside() it have parameters
print(myQuiz.title)
