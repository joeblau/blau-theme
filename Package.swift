// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "BlauTheme",
    products: [
        .library(
            name: "BlauTheme",
            targets: ["BlauTheme"]),
    ],
    dependencies: [
        .package(url: "https://github.com/johnsundell/publish.git", from: "0.1.0")
    ],
    targets: [
        .target(
            name: "BlauTheme",
            dependencies: ["Publish"]
        )
    ]
)
