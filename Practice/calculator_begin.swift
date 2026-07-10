var a : Int?
while a == nil{
print("Enter first value: ")
if let input = readLine(){
    if let num = Int(input){
        a = num
}else{
    print("Invalid number\nTry again")
}
}
}
var b : Int?
while b == nil{
print("Enter second value: ")
if let input = readLine(){
    if let num = Int(input){
        b = num
}else{
    print("Invalid number\nTry again")

}
}
} 
print("=== CALCULATOR MENU ===")
print("Enter + for addition and - for subtraction")
print("Enter your choice: ", terminator: " ")
if let op = readLine() {
switch op {
case "+": 
print("Sum of \(a) and \(b) is \(a+b)")

case "-": 
print("Subtraction of \(a) and \(b) is \(a-b)")
default:
print("Invalid choice\nEnter again: ", terminator: " ")
}
} 

