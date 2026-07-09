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
