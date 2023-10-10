// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "PodUpdater",
    platforms: [.iOS(.v15), .macOS(.v12)],
    dependencies: [.package(url: "https://github.com/apple/swift-argument-parser", from: "1.0.0")],
    targets: [
        .executableTarget(
            name: "PodUpdater",
            dependencies: [
                .product(name: "ArgumentParser", package: "swift-argument-parser"),
            ]),
    ]
)
