// //calculator  
// var a: Int?
// while a == nil {
//     print("Enter first value: ", terminator: "")
//     if let input = readLine() {
//         if let num = Int(input) {
//             a = num
//         } else {
//             print("Invalid number\nTry again")
//         }
//     }
// }
// var b: Int?
// while b == nil {
//     print("Enter second value: ", terminator: "")
//     if let input = readLine() {
//         if let num = Int(input) {
//             b = num
//         } else {
//             print("Invalid number\nTry again")
//         }
//     }
// }
// print("=== CALCULATOR MENU ===")
// print("Enter + for addition and - for subtraction")
// while true {
//     print("Enter your choice: ", terminator: "")
//     if let op = readLine() {
//         switch op {
//         case "+":
//             print("Sum of \(a!) and \(b!) is \(a! + b!)")
//             break
//         case "-":
//             print("Subtraction of \(a!) and \(b!) is \(a! - b!)")
//             break
//         default:
//             print("Invalid choice. Try again.")
//             continue
//         }
//         break
//     }
// }

//part b
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
        print("+  Addition")
        print("-  Subtraction")
        print("*  Multiplication")
        print("/  Division")
        print("%  Modulus")
        print("E  Exit")

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
                print("Calculator Closed. Goodbye! ")
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