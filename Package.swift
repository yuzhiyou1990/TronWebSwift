// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "TronWebSwift",
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
        .library(
            name: "TronWebSwift",
            targets: ["TronWebSwift"]),
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
         .package(url: "https://github.com/apple/swift-protobuf.git", from: "1.18.0"),
         .package(url: "https://github.com/grpc/grpc-swift", from: "1.6.1"),
         .package(url: "https://github.com/krzyzanowskim/CryptoSwift.git", from: "1.4.2"),
         .package(url: "https://github.com/mathwallet/Secp256k1Swift.git", from: "1.2.6"),
         .package(url: "https://github.com/mxcl/PromiseKit.git", from: "6.16.2"),
         .package(url: "https://github.com/mathwallet/Base58Swift.git", branch: "master")
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        .target(
            name: "TronWebSwift",
            dependencies: [
                .product(name: "SwiftProtobuf", package: "swift-protobuf"),
                .product(name: "GRPC", package: "grpc-swift"),
                "CryptoSwift",
                "Secp256k1Swift",
                "PromiseKit",
                "Base58Swift"]
        ),
        .testTarget(
            name: "TronWebSwiftTests",
            dependencies: ["TronWebSwift", "CryptoSwift"]),
    ]
)