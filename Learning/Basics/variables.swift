// Variables in Swift

//let is used to declare a constant variable, which means its value cannot be changed once assigned.
let constantValue = 10
print("Immutable value: ", constantValue)

//var is used to declare a variable, which means its value can be changed after it has been assigned.
var variableValue = 20     
print("Initial value: ", variableValue)
variableValue = 30
print("Updated value: ", variableValue)


//lets take another example ffor better understanding
let str = "Easha";
//first here we came at a point the semicoln is optional in swift but if we want to write multiple statements in a single line then we can use semicoln to separate them.
print("My name is \(str)"); print("I am learning Swift programming language");
//str = "Akram"  This will give an error because str is a constant and cannot be changed.
// - error: cannot assign to value: 'str' is a 'let' constant

var name = "Eesha"
print("Name: ", name)
name = "Eesha Akram"
print("Updated Name: ", name)


//empty string
let emptystr = ""
//check it is empty or not
if emptystr.isEmpty {
    print("The string is empty")
} else {
    print("The string is not empty")
}


//compare string
var v1 = "Hello"
var v2 = "Hello"
if (v1 == v2) {
    print("Both strings are Equal")
} else {
    print("Both strings are not Equal")
}

//print variable values
var V1 = "Hello1"
var V2 = "Hello"
if (V1 == V2) {
    print("\(V1) and \(V2) are Equal")
} else {
    print("\(V1) and \(V2) are not Equal")
}

var cv1 = "Godzilla"
var cv2 = 1000.0
print("Value of \(cv1) is more than \(cv2) millions")


//variable declare
var va = 1212
var vb : Float
vb = 12.2
var vc : Double = 12.2
print("Value of va : \(va)"); print("Value of vb : \(vb)"); print("Value of vc : \(vc)")