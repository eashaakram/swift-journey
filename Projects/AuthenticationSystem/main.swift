// Signup - Login System

//Full Name
func createFullName() -> String {
    while true { 
        print("Enter Full Name:", terminator:" ")
        if let fullName = readLine() {
            if fullName.isEmpty {
                print("Full Name is requird.\n")
            } else {
                return fullName
            }
        } 
   }
}

// // Email
// func createEmail() -> String {
//     ...
// }

// // Phone Number
// func createPhoneNumber() -> String {
//     ...
// }

// // CNIC
// func createCNIC() -> String {
//     ...
// }

// // Date of Birth
// func createDateOfBirth() -> String {
//     ...
// }

// Username
func createUsername() -> String {
    while true {
        print("Create Username:", terminator: " ")
        if let username = readLine() {
            if username.isEmpty {
                print("Username cannot be empty.\n")
            } else if username.count < 3   {
                print("Username must contain at least 3 characters.\n")
            } else if username.count > 20 {
                print("Username cannot be more than 20 characters.\n")
            } else if username.contains(" ") {
                print("Username cannot contain spaces.\n")
            } else {
                var isValid = true 
                for character in username {
                    if !(character.isLetter || character.isNumber || character == "_") {
                        isValid = false 
                        break
                    }
                }
                if isValid {
                    return username
                } else {
                    print("Username can only contain letters, numbers, and underscore (_).\n")
                }
            }
        }
    }
}

// Password
func createPassword() -> String {
    while true {
        print("Create Password:", terminator: " ")
        if let password = readLine() {
            if password.isEmpty {
                print("Password cannot be empty.\n")
            } else if password.count < 8 {
                print("Password must be at least 8 characters long.\n")
            } else {
                var hasUppercase = false
                var hasLowercase = false
                var hasNumber = false
                var hasSpecialCharacter = false
                for character in password {
                    if character.isUppercase {
                        hasUppercase = true
                    } else if character.isLowercase {
                        hasLowercase = true
                    } else if character.isNumber {
                        hasNumber = true
                    } else {
                        hasSpecialCharacter = true
                    }
                }
                if !hasUppercase {
                    print("Password must contain at least one uppercase letter.\n")
                } else if !hasLowercase {
                    print("Password must contain at least one lowercase letter.\n")
                }  else if !hasNumber {
                    print("Password must contain at least one number.\n")
                } else if !hasSpecialCharacter {
                    print("Password must contain at least one special character.\n")
                } else {
                    return password
                }
            }
        }
    }
}

// Confirm Password
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

// Signup
func signup() {
    let fullName = createFullName()
    // let email = createEmail()
    // let phoneNumber = createPhoneNumber()
    // let cnic = createCNIC()
    // let dateOfBirth = createDateOfBirth()
    let username = createUsername()
    let password = createPassword()
    _ = confirmPassword(originalPassword: password) // _ means Return value ko use nahi karna
    print("\n=============================")
    print("Account Created Successfully!")
    print("=============================")
    print("Username: \(username)")
    print("Please login to continue.")
}

// Program
signup()