// // Functions

// // Simple function without parameters
// func backgroundChange() {
//     print("Background Color changed")
// }
// print("Calling function without parameters")
// backgroundChange()

// // Multiple Arguments 
// func addvalues(value1: Int, value2: Int) -> Int { //here -> Int indicates the return type of the function
//     return value1 + value2
// }
// print("Calling function with parameters")
// let v1 = 10
// let v2 = 20
// let a = addvalues(value1: v1, value2: v2)
// print("Sum of \(v1) and \(v2) is \(a)")

// // Another example
// func familyName(name: String, age: Int) -> String {
//     return "My name is \(name) and I am \(age) years old"
// }
// let str = familyName(name: "Easha", age: 20)
// print(str)

// // Multiple return values
// func getLanguages() -> (String, String, String) {
//     return ("Swift", "C++", "Python")
// }
// // Program
// let languages = getLanguages()
// print("Access 3 language: \(languages.2)") // Python
// print("Language1: \(languages.0), Language2: \(languages.1), Languages3: \(languages.2)")

// print("Another method")
// func getProgram() -> (language1: String, language2: String) {
//     return ("Swift", "C++")
// }
// //Program
// let program = getProgram()
// print("Language1: \(program.language1), Language2: \(program.language2)")

// // Below code will not handle error if user enter string instead of int
// // Function with multiple arguments
// func add_values(Value1: Int, Value2: Int) -> Int {
//     return Value1 + Value2
// }
// // Program
// print("Enter first value:")
// let V1 = Int(readLine()!)!
// print("Enter second value:")
// let V2 = Int(readLine()!)!
// let a = add_values(Value1: V1, Value2: V2)
// print("Sum of \(V1) and \(V2) is \(a)")

// below code will not crash if user enter invalid input
func addValues(value1: Int, value2: Int) -> Int {
    return value1 + value2
}
// Program
print("Enter first value:")
if let input1 = readLine(), let n1 = Int(input1) {
    print("Enter second value:")
    if let input2 = readLine(), let n2 = Int(input2) {
        let sum = addValues(value1: n1, value2: n2)
        print("Sum of \(n1) and \(n2) is \(sum)")
    } else {
        print("Invalid second number.")
    }
} else {
    print("Invalid first number.")
}