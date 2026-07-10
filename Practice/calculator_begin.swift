var a: Int?
while a == nil {
    print("Enter first value: ", terminator: "")
    if let input = readLine() {
        if let num = Int(input) {
            a = num
        } else {
            print("Invalid number\nTry again")
        }
    }
}
var b: Int?
while b == nil {
    print("Enter second value: ", terminator: "")
    if let input = readLine() {
        if let num = Int(input) {
            b = num
        } else {
            print("Invalid number\nTry again")
        }
    }
}
print("=== CALCULATOR MENU ===")
print("Enter + for addition and - for subtraction")
while true {
    print("Enter your choice: ", terminator: "")
    if let op = readLine() {
        switch op {
        case "+":
            print("Sum of \(a!) and \(b!) is \(a! + b!)")
            break
        case "-":
            print("Subtraction of \(a!) and \(b!) is \(a! - b!)")
            break
        default:
            print("Invalid choice. Try again.")
            continue
        }
        break
    }
}