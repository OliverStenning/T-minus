// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RaptorUI",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "RaptorUI",
            type: .dynamic,
            targets: ["RaptorUI"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "RaptorUI",
            dependencies: [],
            resources: [.process("Resources")]),
        .testTarget(
            name: "RaptorUITests",
            dependencies: ["RaptorUI"]),
    ]
)
