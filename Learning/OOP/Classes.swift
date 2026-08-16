import Foundation

// Classes are slow!
// Classes are stored in the Heap (memory)
// Objects in the Heap are Reference types 
// Reference types point to an object in memory and update the object in memory



// All the data needed for soe screen
class ScreenViewModel {
    let title: String = ""
    private(set) var showButton: Bool = false

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


    // editing the showButton value from outside the class or edit kar hum class ka andar sa kar rha han toh showButton ko private(set) bna deta
    // for that we create func in class
    func hideButton() {
        showButton = false
    }
    func updateShowButton(newValue: Bool){
        showButton = newValue
    }

}

/*
class ScreenViewModel {
    // if we want ka init na likhna par class ma error nai aye toh jo variables necha declare kiye hn unhe default values da dn
    let title: String = ""
    var showButton: Bool = false
*/



// in classes we create instances and then we change values inside the instances

// Notice that we are using "let", because:
// the object itself is not changing 
// the data inside the object is changing
let viewModel: ScreenViewModel = ScreenViewModel(title: "Screen 1", showButton: true)
// viewModel.showButton = false // here viewModel is still constant even tho the data inside is changing
// now because the showButton private(set) so we cannot change it outside the class
let value = viewModel.showButton // we can just get the value from outside the class

viewModel.hideButton()
viewModel.updateShowButton(newValue: false)
/*
Classes are Reference Types that point to an object in memory
when we create this ScreenViewModel its actually getting stored in memory
and viewModel is actually a pointer to that object in memory
and we are not changing viewModel so we made it let 
but when we are using structs these were all var because we mutate that
and in class instead of changing the object itself we are going to go into the instance
*/




/*
NOTE
"Class mein let hone ke bawajood property kyun modify ho sakti hai?"

Chalo ekdum simple.

Class mein let kis cheez par laga hai?
let user = User(name: "Eesha")

Yahan let user par laga hai, name par nahi.

Class:

class User {
    var name: String
}

Yahan name var hai.

So:

let user = User(name: "Eesha")

means:

user ko kisi aur User se replace nahi karna.

But:

user.name = "Ali"

means:

same User ke andar name ki value "Ali" kar do.

Aur name var hai, isliye allowed hai.

Real-life example 🏠

Socho:

let house = MyHouse()

house ko lock kar diya — matlab tum house ko kisi doosre house se replace nahi kar sakti.

But ghar ke andar:

house.wallColor = "Blue"

kar sakti ho, agar wallColor var hai.

So:

let user
   ↓
same User ko pakar ke rakho


user.name
   ↓
andar ki property var hai
   ↓
modify kar sakte ho
Aur Struct mein?

Struct mein let instance ko fully immutable bana deta hai:

let user = User(name: "Eesha")


user.name = "Ali" // ❌

Toh main reason ye hai:

Class mein let reference ko constant rakhta hai, object ki mutable (var) properties ko nahi.
*/