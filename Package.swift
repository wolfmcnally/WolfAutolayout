// swift-tools-version:5.1
import PackageDescription

let package = Package(
    name: "WolfAutolayout",
    platforms: [
        .iOS(.v9), .macOS(.v10_13), .tvOS(.v11)
    ],
    products: [
        .library(
            name: "WolfAutolayout",
            type: .dynamic,
            targets: ["WolfAutolayout"]),
        ],
    dependencies: [
        .package(url: "https://github.com/wolfmcnally/WolfOSBridge", from: "2.0.0"),
        .package(url: "https://github.com/wolfmcnally/WolfFoundation", from: "5.0.0"),
        .package(url: "https://github.com/wolfmcnally/WolfPipe", from: "2.0.0"),
        .package(url: "https://github.com/wolfmcnally/WolfGeometry", from: "4.0.0")
    ],
    targets: [
        .target(
            name: "WolfAutolayout",
            dependencies: [
                "WolfOSBridge",
                "WolfFoundation",
                "WolfPipe",
                "WolfGeometry"
        ])
        ]
)
