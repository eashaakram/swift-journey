import SwiftCrossUI
import WinUIBackend

@main
struct HelloWorldApp: App {

    typealias Backend = WinUIBackend

    let identifier = "com.eesha.helloworld"

    let windowProperties = WindowProperties(
        title: "Hello SwiftCrossUI!"
    )

    var body: some ViewContent {
        Text("Hello Eesha!")
    }
}