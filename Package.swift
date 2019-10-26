// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "BitriseSwift",
    products: [
        .library(name: "BitriseSwift", targets: ["BitriseSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .exact("4.8.2")),
    ],
    targets: [
        .target(name: "BitriseSwift", dependencies: [
          "Alamofire",
        ], path: "Sources")
    ]
)
