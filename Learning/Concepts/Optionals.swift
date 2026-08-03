import Foundation

// Notes
// Three ways to unwrap optionals: nil coalescing (give default value), if-let, guard-let


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


// ----------------------------------------------------------------


// If-let
// When If-let is successful, enter the closure
isPremium = true
print("User premium updated: \(userIsPremium)")

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

func checkIfUserIsPremium4() -> Bool {
    if let newValue = userIsPremium {
        return newValue 
    }
        return false
}

// new syntax (less code)

func checkIfUserIsPremium5() -> Bool {
    if let newValue = userIsPremium {
    // Here we have access to the non -optional value 
        return userIsPremium
    }
        return false
}


// ----------------------------------------------------------------

// Guard-let
// When a guard is a failure, enter the closure
func checkIfUserIsPremium6() -> Bool {
    // Make sure there is a value (guard is a check)
    // If there is a value in userIsPremium then newValue is equal to that value and the code after the guard statement will execute.
    // If there is no value in userIsPremium then the else block will execute and the function will return false.
    guard let newValue = userIsPremium else {
        return false
    }

    // Here we have access to the non -optional value 
    return newValue
}

// another syntax (less code)

func checkIfUserIsPremium7() -> Bool {
    guard let userIsPremium else {
        return false
    }
    return userIsPremium
}

// ----------------------------------------------------------------

var userIsNew: Bool? = true
var userDidCompleteOnBoarding: Bool? = false
var userFavouriteMovie: String? = nil

func checkIfUserIsSetUp() -> Bool {
    if let userIsNew, let userDidCompleteOnBoarding, let userFavouriteMovie {
        // userIsNew == Bool AND 
        // userDidCompleteOnBoarding == Bool AND
        // userFavouriteMovie == String
        return getUserStatus(
            userIsNew: userIsNew,
            userDidCompleteOnBoarding: userDidCompleteOnBoarding, 
            userFavouriteMovie: userFavouriteMovie
            )
    } else {
        // userIsNew == nil OR
        // userDidCompleteOnBoarding == nil OR  
        // userFavouriteMovie == nil
        return false
    }
}

func checkIfUserIsSetUp2() -> Bool {
    guard let userIsNew, let userDidCompleteOnBoarding, let userFavouriteMovie else {
        return false
    }
    return getUserStatus(
        userIsNew: userIsNew,
        userDidCompleteOnBoarding: userDidCompleteOnBoarding, 
        userFavouriteMovie: userFavouriteMovie
        )
}

func getUserStatus(userIsNew: Bool, userDidCompleteOnBoarding: Bool, userFavouriteMovie: String) -> Bool {
    if userIsNew && userDidCompleteOnBoarding {
        return true
    }
    return false
}

// layered if-let (Nested if-let)
func checkIfUserIsSetUp3() -> Bool {
    if let userIsNew {
        // userIsNew == Bool

        if let userDidCompleteOnBoarding {
            // userDidCompleteOnBoarding == Bool

            if let userFavouriteMovie {
                // userFavouriteMovie == String
                return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnBoarding: userDidCompleteOnBoarding, 
                    userFavouriteMovie: userFavouriteMovie
                    )
            } else {
                // userFavouriteMovie == nil
                return false
            }

        } else {
            // userDidCompleteOnBoarding == nil
            return false
        } 

    } else {
        // userIsNew == nil
        return false
    }
}    
    

// Layered guard-let (Nested guard-let)
func checkIfUserIsSetUp4() -> Bool {
    guard let userIsNew else {
        return false
    }
    // userIsNew == Bool
    guard let userDidCompleteOnBoarding else {
        return false
    } 
    // userDidCompleteOnBoarding == Bool
    guard let userFavouriteMovie else {
        return false
    } 
    // userFavouriteMovie == String
        
    return getUserStatus(
                    userIsNew: userIsNew,
                    userDidCompleteOnBoarding: userDidCompleteOnBoarding, 
                    userFavouriteMovie: userFavouriteMovie
                    )   
    }
  
   