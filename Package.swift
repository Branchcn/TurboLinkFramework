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
            url: "https://github.com/Branchcn/TurboLinkFramework/releases/download/1.0.3/TurboLinkSDK.xcframework.zip",
            checksum: "deee5501b137160bdf020eef93ba8a7a9353c3644bb16ea8e39f2ad9d553dad6")
    ]
)
