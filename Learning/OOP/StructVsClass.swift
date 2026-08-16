import Foundation

// Struct

struct MyStruct {
    // Property of MyStruct
    var name: String

    // Initializer
    init(name: String) {
        self.name = name
    }
}

func forStruct() {
    // fName is an instance of MyStruct.
    let fName = MyStruct(name: "Easha")
    var sName = fName
    sName.name = "Akram"
    print(fName)
    print(fName.name)
    print(sName)
    print(sName.name)
}


// Call
forStruct()


/*
NOTE

MyStruct
   ↓
type

MyStruct(name: "Easha")
   ↓
MyStruct ka instance

fName
   ↓
us instance ko hold kar raha hai


-> fName 
┌─────────────┐
│ name Easha  │
└─────────────┘

        ↓ copy

sName
┌─────────────┐
│ name Easha  │
└─────────────┘

fName                    sName
┌──────────────┐         ┌──────────────┐
│ name: Easha  │         │ name: Easha  │
└──────────────┘         └──────────────┘

                            ↓

                        name = Akram

fName                    sName
┌──────────────┐         ┌──────────────┐
│ name: Easha  │         │ name: Akram  │
└──────────────┘         └──────────────┘
fName affect nahi hua.
Yehi value type ka main point hai.
*/


// Class

class MyClass {
    var name: String

    init(name: String) {
        self.name = name
    }
}

func forClass() {
    let fName = MyClass(name: "iOS Swift")
    let sName = fName
    sName.name = "iOS Objective-C"
    print(fName.name)
    print(sName.name)
}

forClass()