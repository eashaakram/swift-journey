// Key and Values
let ages = ["Easha" : 20, "Akram" : 50]
print(ages["Easha"]) // It print optional value because it is a dictionary it's not sure that the key is present or not
print("Unwrapping value: \(ages["Easha"]!)") // Unwrapping value using ! operator

// Now store this dictionary in another variable
let arrayages = ages["Easha"] // It will store optional value
print(arrayages) // It will print optional value
//but if we write like this
if let arrayages = ages["Easha"] { // It will store unwrapped value
    print("Unwrap: \(arrayages)") // It will print unwrapped value
} //because if let automatically unwrap 