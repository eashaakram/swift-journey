// Signup - Login System

// Signup
func createUsername() -> String {
    while true {
        print("Create Username:", terminator: " ")
        if let username = readLine() {
            if username.isEmpty {
                print("Username cannot be empty.\n")
            } else {
                return username 
            }
        }
    }
}
func createPassword() -> String {
    while true {
        print("Create Password:", terminator: " ")
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
func confirmPassword(originalPassword: String) -> String {
    while true {
        print("Confirm Password:", terminator:" ")
        if let confirmPassword = readLine() {
            if confirmPassword.isEmpty {
                print("Confirm Password cannot be empty.\n")
            } else if confirmPassword != originalPassword {
                print("Passwords do not match. Please try again.\n")
            } else {
                return confirmPassword
            }
        }
    }
}

func Signup() {
    let username = createUsername()
    let password = createPassword()
    _ = confirmPassword(originalPassword: password) // _ means Return value ko use nahi karna
    print("\n=============================")
    print("Account Created Successfully!")
    print("=============================")
    print("Username: \(username)")
}

// Program
Signup()