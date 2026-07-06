// Optional
// Use ? to declare values that maybe nil.
var aa : Int?
var ss : String?
if ss != nil {
    print("String not nil")
}else{
    print("String nil")
}
print(aa) //nil
print(ss) //nil

// Force Unwrapping
// Use ! to unwrap values that are known to be non-nil.
var mainstr : String?  //nil
mainstr = "Yupp!"
print("Without force unwrapping: \(mainstr)")  //it will print Optional("Yupp!")
print("With force unwrapping: \(mainstr!)")  //it will print Yupp!
