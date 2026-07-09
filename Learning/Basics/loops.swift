// Loops & collections
let names = ["Easha", "Akram", "Uzma", "Asfand"]
print("Names: ")
for name in names {
    print("\(name)") // for in loop
}

for i in 1...10 { // here ... means upto 10
    if i % 3 == 0 {
        print(i, terminator: " ") // terminator: " " means print in same line with space
    }
}
