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
    // let reference ko constant bana raha hai.
    // Matlab:
    // sName ko kisi doosre object par point nahi karwa sakti.
    // For example, ye nahi kar sakti:
    // sName = MyClass(name: "Hello")   
    // Because sName is let.
    // Lekin:
    // sName.name = "iOS Objective-C"
    // because tum sName ko replace nahi kar rahi.
    // Tum us object ke andar ki property change kar rahi ho.
    print(fName.name)
    print(sName.name)
}

forClass()

/*
NOTE

fName ───────┐
             ↓
        ┌─────────────┐
        │ MyClass     │
        │ name=Swift  │
        └─────────────┘
             ↑
sName ───────┘

Ek object. Do references.
means:
fName jis object ko refer kar raha hai, sName ko bhi usi object ka reference de do.

*/