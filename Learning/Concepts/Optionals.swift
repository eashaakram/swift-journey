import Foundation
// Optional
// Use ? to declare values that maybe nil.
// var aa : Int?
// var ss : String?
// if ss != nil {
//     print("String not nil")
// }else{
//     print("String nil")
// }
// print(aa) //nil
// print(ss) //nil

// // Force Unwrapping
// // Use ! to unwrap values that are known to be non-nil.
// var mainstr : String?  //nil
// mainstr = "Yupp!"
// print("Without force unwrapping: \(mainstr)")  // Optional("Yupp!")
// print("With force unwrapping: \(mainstr!)")  //i Yupp!

// if mainstr != nil {
//     print(mainstr!)  // ! unwrap
// } else {
//     print("mainstr is nil")
// }


// // lets take another example
// var name : String = "Eesha" //Non-optional, must always have a value. Without ? means it must contain value
// var nickname : String? = nil //Optional, can contain a value or nil. With ? means it may or may not contain value
// print(name, nickname ?? "none") //here ?? means if nickname contain value print leftside otherwise print rightside
// nickname = "Sha's"
// print(name, nickname ?? "none") 

// Practice

// There is always a value and it is a Boolean
let myBool: Bool = false

// We don't know if there is a value, but if there is, it is a Boolean
var myOtherBool: Bool? = nil

// print(myOtherBool)
// myOtherBool = true
// print(myOtherBool)
// myOtherBool = false
// print(myOtherBool)
// myOtherBool = nil
// print(myOtherBool)

// nil coalescing operator

let newValue: Bool? = myOtherBool 

// The value of myOtherBool (if there is one) will be assigned to newValue2, otherwise newValue2 will be assigned false
let newValue2: Bool = myOtherBool ?? false // (if myOtherBool is nil then it will use default value false)
print("newValue2: \(newValue2.description)")

myOtherBool = true
let newValue3 = myOtherBool ?? false
print("newValue3: \(newValue3.description)")


// Another example
var myString: String? = nil
let newString = myString ?? "some default Value"
print("newString: \(newString)")

myString = "Hello, world!"
print(myString ?? "There is no value!") 

myString = "New text!"
print(myString ?? "There is no value!") 
myString = nil
print(myString ?? "There is no value!") 


// ----------------------------------------------------------------

var userIsPremium: Bool? = nil 
print("User premium: \(userIsPremium)")

func checkIfUserIsPremium() -> Bool? {
    userIsPremium  // when you have only one line of code in function then func knows its a return value in swift
}

let isPremium = checkIfUserIsPremium()
print("Check user is premium(1): \(isPremium)")


func checkIfUserIsPremium2() -> Bool {
   return userIsPremium ?? false
}

let isPremium2 = checkIfUserIsPremium2()
print("Check user is premium(2): \(isPremium2)")


// If-let

func checkIfUserIsPremium3() -> Bool {
    // If there is a value in userIsPremium, assign it to newValue and execute the code in the block.
    if let newValue = userIsPremium {
        // Here we have access to the non-optional value 
        return newValue // unwrapped value
    } else {
        return false
    }
}

print("Check user is premium(3): \(checkIfUserIsPremium3())")