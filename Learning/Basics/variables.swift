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
