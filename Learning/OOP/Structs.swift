import Foundation


// Structs are fast!
// Structs are stored in the Stack (memory)
// Objects in the Stack are Value types
// Value types are copied & mutated

struct Quiz {
    let title: String 
    let dateCreated: Date
    let isPremium: Bool? 

    // // Structs have an implicit init
    // init(title: String, dateCreated: Date) {
    //     self.title = title
    //     self.dateCreated = dateCreated
    // }

    // // Customizing init 
    // init(title: String, dateCreated: Date = .now) {
    //     self.title = title
    //     self.dateCreated = dateCreated
    // }

     init(title: String, dateCreated: Date?, isPremium: Bool? ) {
        self.title = title
        self.dateCreated = dateCreated ?? .now
        self.isPremium = isPremium
    }
}

let myObject: String = "Hello, world!"

//let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: .now)
// // myQuiz is of type Quiz and Quiz() is function and inside() it have parameters

// // if we customize init 
// let myQuiz: Quiz = Quiz(title: "Quiz 1!")
// // here Quiz(...) is Quiz instance/object

//let myQuiz: Quiz = Quiz(title: "Quiz 1", isPremium: nil)
let myQuiz: Quiz = Quiz(title: "Quiz 1", dateCreated: nil , isPremium: false)

print(myQuiz.title)
print(myQuiz.dateCreated)
print(myQuiz.isPremium)
