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
            print("Invalid number")
            print("Try again\n")
        }
    }
}

// Function to perform calculator operation
func calculator(value1: Int, value2: Int) {

    print("\n=== CALCULATOR MENU ===")
    print("Enter + for Addition")
    print("Enter - for Subtraction")

    while true {

        print("Enter your choice: ", terminator: "")

        if let op = readLine() {
            switch op {
            case "+":
                print("Sum of \(value1) and \(value2) is \(value1 + value2)")
                return
            case "-":
                print("Subtraction of \(value1) and \(value2) is \(value1 - value2)")
                return
            default:
                print("Invalid choice. Try again.\n")
            }
        }
    }
}
// Program
let a = getValidInteger(message: "Enter first value: ")
let b = getValidInteger(message: "Enter second value: ")
calculator(value1: a, value2: b)