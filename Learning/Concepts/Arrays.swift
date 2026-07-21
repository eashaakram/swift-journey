// Array Declare
var myarr = [String]() // alloc init
myarr = ["yy", "zz", "aa"]
print(myarr)


// Array Initialization
let stars : [String] = ["Sun", "Moon", "Earth"]
print(stars)
print("Second value: \(stars[1])") // Moon


// Working String
let age = 20
let name = "Easha"
//let s1 = name + " is " + age  // error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'
let s1 = name + " is " + String(age) // convert Int to String
print("First method: \(s1)")
let s2 = "\(name) is \(age)" 
print("Second method: \(s2)")
var n1 = 10
var n2 = 20
var n3 = 30
var show = "First number " + String(n1) + " Second number " + String(n2) + " Third number " + String(n3)
print("Third method: \(show)")