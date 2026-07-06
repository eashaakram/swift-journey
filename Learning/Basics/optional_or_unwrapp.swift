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

if mainstr != nil {
    print(mainstr!)  // ! unwrapp
} else {
    print("mainstr is nil")
}


// lets take another example
var name : String = "Eesha" //without ? means it must contain value
var nickname : String? = nil
print(name, nickname ?? "none") //here ?? means if nickname contain value print leftside otherwise print rightside
nickname = "Sha's"
print(name, nickname ?? "none") 