// swift-tools-version: 5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "ZowieChatSDK",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "ZowieChatSDK",
            targets: ["ZowieSDKTargets"]
        ),
    ],
    dependencies: [
        .package(
            url: "https://github.com/airbnb/lottie-ios",
            from: "4.4.1"
        )
    ],
    targets: [
        .binaryTarget(
            name: "Apollo",
            path: "Apollo.xcframework"
        ),
        .binaryTarget(
            name: "ApolloAPI",
            path: "ApolloAPI.xcframework"
        ),
        .binaryTarget(
            name: "ApolloUtils",
            path: "ApolloUtils.xcframework"
        ),
        .binaryTarget(
            name: "Kingfisher",
            path: "Kingfisher.xcframework"
        ),
        .binaryTarget(
            name: "ZowieSDK",
            path: "ZowieSDK.xcframework"
        ),
        .target(
            name: "ZowieSDKTargets",
            dependencies: [
                .target(name: "Apollo"),
                .target(name: "ApolloAPI"),
                .target(name: "ApolloUtils"),
                .target(name: "Kingfisher"),
                .target(name: "ZowieSDK"),
                .product(name: "Lottie", package: "lottie-ios")
            ],
            path: "Sources"
        )
    ]
)
