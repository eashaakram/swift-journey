// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SwiftCrossUI_HelloWorld",
    dependencies: [
        .package(url: "https://github.com/stackotter/swift-cross-ui", branch: "main"),
        .package(url: "https://github.com/SwiftCrossUI/GTKBackend.git", branch: "main")
    ],
    targets: [
        .executableTarget(
            name: "SwiftCrossUI_HelloWorld",
            dependencies: [
                .product(name: "SwiftCrossUI", package: "swift-cross-ui"),
                .product(name: "GTKBackend", package: "GTKBackend")
            ]
        )
    ]
)