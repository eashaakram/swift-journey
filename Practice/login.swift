// // Login System
// // Get username
// func getUsername() -> String {
//     while true {
//         print("Enter username: ", terminator: "")
//         if let username = readLine() {
//             if username.isEmpty {
//                 print("Username is emply\nPlease enter any username")
//             } else {
//               return username  
//             }
//         }
//     }
// }

// // Get password
// func getPassword() -> Int { 
//     while true {
//         print("Enter password in numbers: ", terminator: "")
//         if let input = readLine(), let password = Int(input) {
//             return password 
//         } else {
//             print("Invalid password\nPassword must contain numbers only")
//         }
//     }
// }

// // login part
// func login() {
//     let correctUsername = "easha"
//     let correctPassword = 12345678
//     while true{
//         let username = getUsername()
//         let password = getPassword()
//         if username == correctUsername && password == correctPassword {
//             print("Login Successful!")
//             return
//         } else { 
//             print("Invalid username and password \nEnter again!")
//         }
//     }
// }


// Program 
login()

// Level 2
// Get username
func getUsername() -> String {
    while true {
        print("Enter username: ", terminator: "")
        if let username = readLine() {
            if username.isEmpty {
                print("Username is emply. Please enter any username...")
            } else {
              return username  
            }
        }
    }
}

// Get password
func getPassword() -> String { 
    while true {
        print("Enter password in numbers: ", terminator: "")
        if let password = readLine() {
            if password.isEmpty {
                print("Password cannot be empty. Please enter your password...")
            } else if password.count < 8 {
                print("Password must be at least 8 characters long...")
            } else { 
                return password
            }
        }
    }
}

// login part
func login() {
    let correctUsername = "easha"
    let correctPassword = "12345678"
    while true{
        let username = getUsername()
        let password = getPassword()
        if username == correctUsername && password == correctPassword {
            print("Login Successful!")
            return
        } else { 
            print("Invalid username and password. Enter again!...")
        }
    }
}