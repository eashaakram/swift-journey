// Signup - Login System

// Signup
func Username() -> String {
    while true {
        print("Create Username: ", terminator: " ")
        if let username = readLine() {
            if username.isEmpty {
                print("Username cannot be empty.\n")
            } else {
                return username 
            }
        }
    }
}
func Password() -> String {
    while true {
        print("Create Password: ", terminator: " ")
        if let password = readLine() {
            if password.isEmpty {
                print("Password cannot be empty\n")
            } else if password.count < 8 {
                print("Password must be at least 8 charachers long\n")
            } else {
                return password
            }
        }
    }
}

func Signup() {
    let username = Username()
    let password = Password()
    print("\n=============================")
    print("Account Created Successfully!")
    print("\n=============================")
    print("Username: \(username)")
    print("Password: \(password)")
}

// Program
Signup()