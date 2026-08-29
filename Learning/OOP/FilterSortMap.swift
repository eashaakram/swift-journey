import Foundation


struct DatabaseUser {
    let name: String
    let isPremium: Bool
    let order: Int
}

var allUsers: [DatabaseUser] = [
    DatabaseUser(name: "Nick", isPremium: true, order: 4),
    DatabaseUser(name: String, isPremium: Bool, order: 1),
    DatabaseUser(name: String, isPremium: Bool, order: 3),
    DatabaseUser(name: String, isPremium: Bool, order: Int),
    DatabaseUser(name: String, isPremium: Bool, order: Int),
]