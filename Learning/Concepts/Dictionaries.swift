import Foundation

// Key and Values
let ages = ["Easha" : 20, "Akram" : 50]
print(ages)
print(ages["Easha"]) // It print optional value because it is a dictionary it's not sure that the key is present or not
print("Unwrapping value: \(ages["Easha"]!)") // Unwrapping value using ! operator

// Now store this dictionary in another variable
let arrayages = ages["Easha"] // It will store optional value
print(arrayages) // It will print optional value
//but if we write like this
if let arrayages = ages["Easha"] { // It will store unwrapped value
    print("Unwrap: \(arrayages)") // It will print unwrapped value
} //because if let automatically unwrap 

// Dictionaries keys are unique 

var myFirstDictionary: [String : Bool] = [
    "Apple" : true,
    "Orange" : false
    ]


// Dictionaries are not stored in order so there is no any index
let item = myFirstDictionary["Orange"]

var anotherDictionary: [Int : String] = [
    0 : "Apple",
    176 : "Banana"
]
let item2 = anotherDictionary[86]
print(item2)


var anotherDictionary2: [String : String] = [
    "abc" : "Apple",
    "def" : "Banana",
    "xyz" : "Apple"
    // "abc" : "Mango" // Dictionary keys must be unique
]
let item3 = anotherDictionary2["abc"]
print(item3)

// Adding items in dictionary

var anotherDictionary3: [String : String] = [
    "abc" : "Apple",
    "def" : "Banana"
]

anotherDictionary3["xyz"] = "Mango"

print("ADD: \(anotherDictionary3)")

// Remove item from dictionary
anotherDictionary3.removeValue(forKey: "def")

print("REMOVE: \(anotherDictionary3)")


struct PostModel {
    let id: String
    let title: String
    let likeCount: Int
}

var postArray: [PostModel] = [
    PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    PostModel(id: "def123", title: "Post 2", likeCount: 7),
    PostModel(id: "xyz123", title: "Post 3", likeCount: 217)
]

// check
if postArray.indices.contains(1) {
    let item = postArray[1]
    print(item)
}

// Custom Dict
var postDict: [String:PostModel] = [
    "abc123" : PostModel(id: "abc123", title: "Post 1", likeCount: 5),
    "def123" : PostModel(id: "def123", title: "Post 2", likeCount: 7),
    "xyz123" : PostModel(id: "xyz123", title: "Post 3", likeCount: 217)
]
 
let myNewItem = postDict["def123"]
print(myNewItem)