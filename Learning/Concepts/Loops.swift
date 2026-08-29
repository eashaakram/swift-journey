import Foundation

// Loops & collections
let names = ["Easha", "Akram", "Uzma", "Asfand"]
print("Names: ")
for name in names {
    print("\(name)") // for in loop
}

for i in 1...9 { // here ... means upto 9
    if i % 3 == 0 {
        print(i, terminator: " ") // terminator: " " means print in same line with space
    }
}
print() // print new line

// from, to, by
let three = stride(from: 2, to: 10, by: 2) // here from means start from 2, to means upto 10, by means increment by 2
for n in three {
    print(n, terminator: " ")
}
print()

// indices
let name2 = ["Easha", "Akram", "Uzma", "Asfand"]
for nameindex in name2.indices {
    if(nameindex < 3){
        print(name2[nameindex], terminator: " ")
    }
}
print()

// enumerated
let name3 = ["Easha", "Akram", "Uzma", "Asfand"]
for (index, name3) in name3.enumerated() {
        print("\(index ): \(name3)") // It will print index and name in same line
    }

// continue 
 print("Continue will skip 3:")
for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i, terminator: " ")
}
print()

// break
print("Break will stop loop at 2:")
for i in 1...5 {
    if i == 3 {
        break
    }
    print(i, terminator: " ")
}
print()

// 0 to 99 (..< less than 100)
for item in 0..<100 {
    print(item)
}

let myArray = ["Alpha", "Beta", "Gamma", "Delta", "Epsilon"]

var secondArray: [String] = []

for item in myArray {
    print(item)

    if item == "Gamma" {
        // call (add data in secondArray)
        secondArray.append(item)
    }
}

print(secondArray)

struct LessonModel {
    let title: String
    let isFavorite: Bool
}

// Array
let allLessons = [
    LessonModel(title: "Lesson 1", isFavorite: true),
    LessonModel(title: "Lesson 2", isFavorite: false),
    LessonModel(title: "Lesson 3", isFavorite: false),
    LessonModel(title: "Lesson 4", isFavorite: true)
]

// array changeable: var and its empty
var favoriteLessons: [LessonModel] = []

for lesson in allLessons {
    if lesson.isFavorite {
        favoriteLessons.append(lesson)
    }
}

print(favoriteLessons)



// enumerated (index, item in loop)
for (index, lesson) in allLessons.enumerated() {
   
   // Control flow
   if index == 1 {
    // break // opposite of break is continue
    continue // means(skip) stop this current loop and continue the next loop
   }

    print("Index: \(index) || Lesson: \(lesson)")
}  