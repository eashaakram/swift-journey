// Project 1
// Function to get a valid integer
func getValidInteger(message: String) -> Int {
    while true {
        print(message, terminator: "")
        if let input = readLine(),
           let number = Int(input) {
            return number
        } else {
            print("Invalid number!")
            print("Please try again.\n")
        }
    }
}
// Function to perform calculator operations
func calculator(value1: Int, value2: Int) {
    while true {
        print("\n===== CALCULATOR MENU =====")
        print("+  Addition\n-  Subtraction\n*  Multiplication\n/  Division\n%  Modulus\nE  Exit")
        print("\nEnter your choice: ", terminator: "")
        if let op = readLine() {
            switch op {
            case "+":
                print("Sum of \(value1) and \(value2) is \(value1 + value2)")
            case "-":
                print("Subtraction of \(value1) and \(value2) is \(value1 - value2)")
            case "*":
                print("Multiplication of \(value1) and \(value2) is \(value1 * value2)")
            case "/":
                if value2 != 0 {
                    print("Division of \(value1) and \(value2) is \(value1 / value2)")
                } else {
                    print("Error! Division by zero is not allowed.")
                }
            case "%":
                if value2 != 0 {
                    print("Modulus of \(value1) and \(value2) is \(value1 % value2)")
                } else {
                    print("Error! Modulus by zero is not allowed.")
                }
            case "E", "e":
                print("Calculator Closed. Goodbye! 👋")
                return
            default:
                print("Invalid choice! Please try again.")
            }
        }
    }
}
// ================= Program Starts Here =================
print("===== SIMPLE CALCULATOR =====")
let a = getValidInteger(message: "Enter first value: ")
let b = getValidInteger(message: "Enter second value: ")
calculator(value1: a, value2: b)