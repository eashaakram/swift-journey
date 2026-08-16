import Foundation

// Classes are slow!
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference types 
// Reference types point to an object in memory and update the object in memory



// All the data needed for soe screen
class ScreenViewModel {
    let title: String = ""
    var showButton: Bool = false

// Same init as a Struct, except structs have implicit inits
// in Struct we have implicit init , default init but in class we have to write initializers manually by ourselves
    init(title: String, showButton: Bool) {
    // self means reference the class itself
        self.title = title
        self.showButton = showButton
    }

    // One difference in Classes and Structs, Classes have deinit
    deinit {
        // runs as the object is being removed from memory
        // Structs do NOT have deinit!
    }

}

/*
class ScreenViewModel {
    // if we want ka init na likhna par class ma error nai aye toh jo variables necha declare kiye hn unhe default values da dn
    let title: String = ""
    var showButton: Bool = false
*/