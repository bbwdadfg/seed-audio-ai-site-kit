// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "SeedAudioAISiteKit",
    platforms: [.macOS(.v12), .iOS(.v15)],
    products: [
        .library(name: "SeedAudioAISiteKit", targets: ["SeedAudioAISiteKit"])
    ],
    targets: [
        .target(name: "SeedAudioAISiteKit"),
        .testTarget(name: "SeedAudioAISiteKitTests", dependencies: ["SeedAudioAISiteKit"])
    ]
)
