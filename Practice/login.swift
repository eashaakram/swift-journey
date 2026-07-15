// Login System
// Get username
func getUsername() -> String {
    while true {
        print("Enter username: ", terminator: "")
        if let username = readLine() {
            if username.isEmpty {
                print("Username is emply\nPlease enter any username")
            } else {
              return username  
            }
        }
    }
}

// Get password
func getPassword() -> Int { 
    while true {
        print("Enter password in numbers: ", terminator: "")
        if let input = readLine(), let password = Int(input) {
            return password 
        } else {
            print("Invalid password\nPassword must contain numbers only")
        }
    }
}

// login part
func login() {
    let correctUsername = "easha"
    let correctPassword = 12345678
    let username = getUsername()
    let password = getPassword()
    if username == correctUsername && password == correctPassword {
        print("Login Successful!")
        return
    } else { 
        print("Invalid username and password \nEnter again!")
    }
}

