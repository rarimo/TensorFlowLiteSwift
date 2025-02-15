// swift-tools-version:5.3

import PackageDescription
let package = Package(
    name: "TensorFlowLiteSwift",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TensorFlowLiteSwift",
            targets: ["TensorFlowLite"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rarimo/TensorFlowLiteC.git", .branch("main")),
    ],
    targets: [
        .target(
            name: "TensorFlowLite",
            dependencies: ["TensorFlowLiteC"]),
    ]
)
