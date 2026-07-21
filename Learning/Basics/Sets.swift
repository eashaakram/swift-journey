/*Set is similar to array but it does not allow duplicate values and it is unordered. 
It is a collection of unique values of the same type in a collection with no defined ordering. 
The Set type in Swift is bridged to Foundation’s NSSet class. 
You can use a set instead of an array when the order of items is not important, 
or when you need to ensure that each item only appears once.*/

var colors : Set<String> = ["Blue", "Red", "Green", "Blue"]
print("Colors in Set: \(colors)") //It will not print repeat values
colors.insert("Black")
print("Add Black color in Set: \(colors)")
colors.remove("Red")
print("Remove Red color from Set: \(colors)")
// Check if Set contains a value
print("Set contains Green: \(colors.contains("Green"))") //Return True or False
print("Check Black is in set: \(colors.contains("Red"))")


