// Signup - Login System
import Foundation
//Full Name
func createFullName() -> String {
    while true { 
        print("Enter Full Name:", terminator:" ")
        if let fullName = readLine() {
            if fullName.isEmpty {
                print("Full Name is required.\n")
            } else {
                return fullName
            }
        } 
   }
}

// Email
func createEmail() -> String {
    while true {
        print("Enter Email:", terminator: " ")
        if let email = readLine() {
            if email.isEmpty {
                print("Email cannot be empty.\n")
            } else if email.contains(" ") {
                print("Email cannot contain spaces.\n")   
            } else if !email.contains("@") || !email.contains(".") {
                print("Email must contain both (@) and (.) symbols.\n")
            } else if email.first == "@" || email.first == "." {
                print("Email cannot start with (@) or (.)\n")
            } else if email.last == "@" || email.last == "." {
                print("Email cannot end with (@) or (.)\n")
            } else {
                var atCount = 0
                for character in email {
                    if character == "@" {
                        atCount += 1
                    } 
                } 
                if atCount != 1 {
                    print("Email must contain exactly one (@)\n")
                }  else {
                    return email
                }
            }
        }
    } 
}

// Phone Number
func createPhoneNumber() -> String {
    while true {
        print("Enter Phone Number:", terminator: " ")
        if let phoneNum = readLine() {  
            if phoneNum.isEmpty {
                print("Phone Number cannot be empty.\n")
            } else if phoneNum.contains(" ") {
                print("Phone Number cannot contain spaces.\n")
            } else {
                let cleanNumber = phoneNum.replacingOccurrences(of: "-", with: "")
                if cleanNumber.count != 11 {
                    print("Phone Number must contain exactly 11 digits.\n")
                    } else if !cleanNumber.starts(with: "03") {
                    print("Phone Number must start with 03.\n")
                    } else {
                        var isValid = true 
                        for character in cleanNumber {
                            if !(character.isNumber) {
                                isValid = false
                                break
                            }
                        }
                        if isValid {
                            return cleanNumber
                        } else {
                        print("Phone Number can only contain Numbers.\n")
                    }
                }
            }
        }        
    }
}

// CNIC
func createCNIC() -> String {
   while true {
    print("Enter CNIC:", terminator: " ")
    if let cnic = readLine() {
        if cnic.isEmpty {
            print("CNIC cannot be empty.\n")
        } else if cnic.contains(" ") {
            print("CNIC cannot contain spaces.\n")
        } else {
            let cleanCNIC = cnic.replacingOccurrences(of: "-", with: "")
            if cleanCNIC.count != 13 {
                print("CNIC must contain exactly 13 digits.\n")
            } else {
                var isValid = true 
                for character in cleanCNIC {
                    if !(character.isNumber) {
                        isValid = false
                        break
                    }
                }
                if isValid {
                    return cleanCNIC
                } else {
                    print("CNIC can only contain numbers.\n")
                }
            }
        }
    }
   } 
}

// Date of Birth
func createDateOfBirth() -> String {
    while true {
        print("Enter Date of Birth (DD/MM/YYYY):", terminator: " ")
        if let dob = readLine() {
            if dob.isEmpty {
                print("Date of Birth cannot be empty.\n")
            } else if dob.contains(" ") {
                print("Date of Birth cannot contain spaces.\n")
            } else if dob.count != 10 {
                print("Date of Birth must be in DD/MM/YYYY format.\n")
            } else {
                let firstSlash = dob.index(dob.startIndex, offsetBy: 2)
                let secondSlash = dob.index(dob.startIndex, offsetBy: 5)
                if dob[firstSlash] != "/" || dob[secondSlash] != "/" {
                    print("Date of Birth must be in DD/MM/YYYY format.\n")
                } else {
                    var isValid = true
                    for (index, character) in dob.enumerated() {
                        if index == 2 || index == 5 {
                            continue
                        }
                        if !character.isNumber {
                            isValid = false
                            break
                        }
                    }
                    if isValid {
                        return dob
                    } else {
                        print("Date of Birth can only contain numbers and (/).\n")
                    }
                }
            }
        }
    }
}

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

    let username = createUsername()

    let email = createEmail()

    let phoneNumber = createPhoneNumber()  
    let index = phoneNumber.index(phoneNumber.startIndex, offsetBy: 4) // startIndex means first position, offsetBy means division
    let phoneFirstPart = phoneNumber[..<index] // ..< means index sa pehla wala
    let phoneSecondPart = phoneNumber[index...] // ... means index sa laa kar end tk
    
    let cnic = createCNIC()
    let firstIndex = cnic.index(cnic.startIndex, offsetBy: 5)
    let secondIndex = cnic.index(cnic.startIndex, offsetBy: 12)
    let cnicFirstPart = cnic[..<firstIndex]
    let cnicSecondPart = cnic[firstIndex..<secondIndex]
    let cnicThirdPart = cnic[secondIndex...]
   
    let dateOfBirth = createDateOfBirth()
   
    let password = createPassword()
    _ = confirmPassword(originalPassword: password) // _ means Return value ko use nahi karna
   
    print("\n=============================")
    print("Account Created Successfully!")
    print("=============================")

    print("Full Name: \(fullName)")
    print("Username: \(username)")
    print("Email: \(email)")
    print("Phone Number: \(phoneFirstPart)-\(phoneSecondPart)")
    print("CNIC: \(cnicFirstPart)-\(cnicSecondPart)-\(cnicThirdPart)")
    print("Date of Birth: \(dateOfBirth)")

    print("\nPlease login to continue.")
}

// Program
signup()