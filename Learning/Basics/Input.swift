//1 simple
print("Enter your name: ", terminator: "")
let name = readLine()
print(name!)

//2 if input is empty
print("Enter your Father name: ", terminator: "")
if let fname = readLine() {

    if fname.isEmpty {
        print("No input received.")
    } else {
        print("Hello, \(fname)")
    }

}

//3 Nil Coalescing (??)
print("Enter your Mother name: ", terminator: "")
let mname = readLine() ?? ""  //here ?? just handle nil if you enter "" without typing anything swift consider it empty string not nil
if mname.isEmpty {
    print("No input received.")
} else {
    print("Hello, \(mname)")
}

//another method of 3
if let mname = readLine() {
    if mname.isEmpty {
        print("No input")
    } else {
        print(mname)
    }

}