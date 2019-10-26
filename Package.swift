// swift-tools-version:5.1

import PackageDescription

let package = Package(
    name: "BitriseSwift",
    platforms: [
        .iOS(SupportedPlatform.IOSVersion.v13),
        .macOS(SupportedPlatform.MacOSVersion.v10_15),
        .tvOS(SupportedPlatform.TVOSVersion.v13),
        .watchOS(SupportedPlatform.WatchOSVersion.v6),
    ],
    products: [
        .library(name: "BitriseSwift", targets: ["BitriseSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", from: "4.9.0"),
    ],
    targets: [
        .target(name: "BitriseSwift", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)
