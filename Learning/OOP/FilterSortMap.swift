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