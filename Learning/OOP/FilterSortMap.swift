import Foundation


struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: "Emily", isPremium: false, order: 1),
    DatabaseUser(name: "Samatha", isPremium: true, order: 3),
    DatabaseUser(name: "Joe", isPremium: true, order: 1000),
    DatabaseUser(name: "Chris", isPremium: false, order: 2),
]

// Filter

// var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in  
//     if user.isPremium {
//         return true
//     }
//     return false
// }

var allPremiumUsers: [DatabaseUser] = allUsers.filter { user in
    // if we return one thing then no need to write return   
    user.isPremium
}

// more short to write (same as above)
var allPremiumUsers2: [DatabaseUser] = allUsers.filter({ $0.isPremium })

// var allPremiumUsers: [DatabaseUser] = []

// for user in allUsers {
//     if user.isPremium {
//         allPremiumUsers.append(user)
//     }
// }
print((allPremiumUsers))
print("2: \(allPremiumUsers2)")



// Sorted
var orderedUsers: [DatabaseUser] = allUsers.sorted { user1, user2 in
    user1.order < user2.order
}
print("Ordered Users: \(orderedUsers)")

// Short way to write (same as above)
var orderedUsers2: [DatabaseUser] = allUsers.sorted({ $0.order < $1.order })
print("Ordered Users 2: \(orderedUsers2)")


// Mapping
var userNames: [String] = allUsers.map { user in
    user.name
}
print("User Names: \(userNames)")

// Short way to write (same as above)
var userNames2: [String] = allUsers.map({ $0.name })
print("User Names 2: \(userNames2)")