// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TurboLinkSDK",
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "TurboLinkSDK",
            targets: ["TurboLinkSDK"]),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .binaryTarget(
            name: "TurboLinkSDK",
            url: "https://github.com/Branchcn/TurboLinkFramework/releases/download/1.0.1/TurboLinkSDK.xcframework.zip",
            checksum: "80ff478afc70c66739e9f7428b68a958ede531af5d2c70585bfc12f3cf5c798b")
    ]
)
