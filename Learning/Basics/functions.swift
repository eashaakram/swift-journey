// Functions

// Simple function without parameters
func backgroundChange() {
    print("Background Color changed")
}
print("Calling function without parameters")
backgroundChange()

// Multiple Arguments 
func addvalues(value1: Int, value2: Int) -> Int { //here -> Int indicates the return type of the function
    return value1 + value2
}
print("Calling function with parameters")
let v1 = 10
let v2 = 20
let a = addvalues(value1: v1, value2: v2)
print("Sum of \(v1) and \(v2) is \(a)")

// Another example
func familyName(name: String, age: Int) -> String {
    return "My name is \(name) and I am \(age) years old"
}
let str = familyName(name: "Easha", age: 20)
print(str)

// Multiple return values
func getLanguages() -> (String, String, String) {
    return ("Swift", "C++", "Python")
}
// Program
let languages = getLanguages()
print("Access 3 language: \(languages.2)") // Python
print("Language1: \(languages.0), Language2: \(languages.1), Languages3: \(languages.2)")

print("Another method")
func getProgram() -> (language1: String, language2: String) {
    return ("Swift", "C++")
}
//Program
let program = getProgram()
print("Language1: \(program.language1), Language2: \(program.language2)")
