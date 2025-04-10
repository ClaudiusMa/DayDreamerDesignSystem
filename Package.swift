// swift-tools-version: 6.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DaydreamerDesignSystem",
    platforms: [
        .iOS(.v13),
        .macOS(.v10_15)
    ],
    products: [
        // Products define the executables and libraries a package produces, making them visible to other packages.
        .library(
            name: "DaydreamerDesignSystem",
            targets: ["DaydreamerDesignSystem"]),
    ],
    dependencies: [
        // No dependencies needed for now
    ],
    targets: [
        .target(
            name: "DaydreamerDesignSystem"
        )
    ]
)
