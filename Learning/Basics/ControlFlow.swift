// Control Flow
// if-else
if 10 > 5 {
    print("10 is greater than 5")
} else {
    print("10 is not greater than 5")
}

// switch
let name1 = "Easha"
switch name1 {
    case "Akram":
        print("Name is Akram")
    case "Easha":
        print("Name is Easha")
    default:
        print("Irrelevant name")
}

// continue 
 print("Continue will skip 3:")
for i in 1...5 {
    if i == 3 {
        continue
    }
    print(i, terminator: " ")
}
print()

// break
print("Break will stop loop at 2:")
for i in 1...5 {
    if i == 3 {
        break
    }
    print(i, terminator: " ")
}
print()

// guard (in future)