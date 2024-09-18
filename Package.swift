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
            url: "https://github.com/Branchcn/TurboLinkFramework/releases/download/1.1.11/TurboLinkSDK.xcframework.zip",
            checksum: "42e2f107f5d88cade81df37e45266a39184be8332358e337bfe2fc5962092149")
    ]
)
