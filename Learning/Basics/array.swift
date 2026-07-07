// Array Declare
var myarr = [String]() // alloc init
myarr = ["yy", "zz", "aa"]
print(myarr)

// Working String
let age = 20
let name = "Easha"
//let s1 = name + " is " + age  // error: binary operator '+' cannot be applied to operands of type 'String' and 'Int'
let s1 = name + " is " + String(age) // convert Int to String
print("First method: \(s1)")
let s2 = "\(name) is \(age)" 
print("Second method: \(s2)")
