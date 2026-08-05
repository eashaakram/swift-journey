import Foundation

/* Tuples are not collection but simply multiple variables that can be 
that can be passed around with a single identifier*/
let fullName = ("Easha", "Akram")
print("Accessing all values by single variable: \(fullName)") 
//It can be accessde manually by index
print("Accessing first value by index: \(fullName.0)")
print("Accessing second value by index: \(fullName.1)")

// Tuples can be deconstructed in to new variable names
let (first, last) = ("Easha", "Akram")
print("First name: \(first)")

// If you want to ignore a value, you can use an underscore (_) instead of a variable name
let (first1, _) = ("Easha", "Akram") 
print("First name (ignore second by using underscore): \(first1)")

let (f1, _, f3) = ("Easha", "Akram", "Uzma")
print("First name: \(f1)"); print("Third name: \(f3)")


// Tuple with Function
// A function can return multiple values by using a tuple as the return type

var userName: String = "Hello"
var userIsPremium: Bool = false
var userIsNew: Bool = true

func getUserName() -> String {
    userName
}

func getUserIsPremium() -> Bool {
    userIsPremium
}


// limited to 1 return typle
func getUserInfo() -> String {
    let name = getUserName()
    let isPremium = getUserIsPremium()

    // do something
    return name
}


// Tuples can combine multiple pieces of data
func getUserInfo2() -> (String, Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()

    return(name, isPremium)
}


var userData: String = userName
var userData2: (String, Bool, Bool) = (userName, userIsPremium, userIsNew)

let info1 = getUserInfo2()
let name1 = info1.0
// let name = userData2.2


// Adding parameters names
func getUserInfo3() -> (name: String, isPremium: Bool) {
    let name = getUserName()
    let isPremium = getUserIsPremium()

    return(name, isPremium)
}

let info2 = getUserInfo3()
let name2 = info2.isPremium

func getUserInfo4() -> (name: String, isPremium: Bool, isNew: Bool) {
    return (userName, userIsPremium, userIsNew)
}

func doSomethingWithUserInfo(info: (name: String, isPremium: Bool, isNew: Bool)) {

}

let info = getUserInfo4()
doSomethingWithUserInfo(info: info)