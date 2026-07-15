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
