// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "WolfAutolayout",
    platforms: [
        .iOS(.v9), .macOS(.v10_13), .tvOS(.v11)
    ],
    products: [
        .library(
            name: "WolfAutolayout",
            targets: ["WolfAutolayout"]),
        ],
    dependencies: [
        .package(url: "https://github.com/wolfmcnally/WolfCore", from: "5.0.0"),
        .package(url: "https://github.com/wolfmcnally/WolfGraphics", from: "1.0.0"),
    ],
    targets: [
        .target(
            name: "WolfAutolayout",
            dependencies: ["WolfCore", "WolfGraphics"])
        ]
)
