import Foundation

// // Array Declare
// var myarr = [String]() // alloc init
// myarr = ["yy", "zz", "aa"]
// print(myarr)


// // Array Initialization
// let stars : [String] = ["Sun", "Moon", "Earth"]
// print(stars)
// print("Second value: \(stars[1])") // Moon


// // Working String
// let age = 20
// let name = "Easha"
// //let s1 = name + " is " + age  // error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'
// let s1 = name + " is " + String(age) // convert Int to String
// print("First method: \(s1)")
// let s2 = "\(name) is \(age)" 
// print("Second method: \(s2)")
// var n1 = 10
// var n2 = 20
// var n3 = 30
// var show = "First number " + String(n1) + " Second number " + String(n2) + " Third number " + String(n3)
// print("Third method: \(show)")


var myTitle: String = "Hello, world!"
var myTitle2: String = "Hello, world!!!"

// Tuple
func doSomething(value:(title1: String, title2: String)) {

}

doSomething(value: (myTitle, myTitle2))

// Custom data model
struct TitlesModel {
    let title1: String
    let title2: String
}

func doSomething(value: TitlesModel) {

}

doSomething(value: TitlesModel(title1: myTitle, title2: myTitle2))

// ----------------------------------------------------------------------------

let apple = "Apple"
let orange = "Orange"

let fruits: [String] = ["Apple", "Orange"]
// Another way to write this 
let fruits2: [String] = [apple, orange]
// Advance swift method (generic)
let fruits3: Array<String> = [apple, orange]


let myBools: [Bool] = [true, false, true, true, true, false]

// pass value that would be whole bunch of strings
// Here I can pass bunch of Strings as one single collection
func doSomething(value: [String]) {

}


// count
var fruitsArray: [String] = ["Apple", "Orange"]
print("Fruits Array: \(fruitsArray)")

let count = fruitsArray.count
print("Number of values in Array: \(count)")


// First and last
let firstItem = fruitsArray.first

/*String?
The first element of the collection.
If the collection is empty, the value of this property is nil.
let numbers = [10, 20, 30, 40, 50]
if let firstNumber = numbers.first {
    print(firstNumber)
}
// Prints "10"
*/

let lastItem = fruitsArray.last

if let firstItem = fruitsArray.first {
    print("First Item in array: \(firstItem)")
}

print("Last Item in array: \(lastItem)")


// // This is not general way to add items in array
// fruitsArray = fruitsArray + ["Banana", "Mango"]
// print("Fruits Array Updated: \(fruitsArray)")

// Special methods to add data in array

fruitsArray.append("Banana")
fruitsArray.append("Mango")

// If we want to append both together (means more than one data)
fruitsArray.append(contentsOf: "Grapes", "Strawberry")

print("Fruits Array Updated: \(fruitsArray)")
