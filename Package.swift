// swift-tools-version:5.6
import PackageDescription

let package = Package(
    name: "TPNMediationIMAAdapter",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "TPNMediationIMAAdapter",
            targets: ["TPNMediationIMAAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/topon-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-interactive-media-ads-ios.git", exact: "3.34.1")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkIMAAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkIMAAdapter/33401.2.10/AnyThinkIMAAdapter-33401.2.10.zip",
            checksum: "7a3ba84432f573d2c9cca8375e4fdb5051be1377aa7caeee33d268399be6674f"
        ),
        .target(
            name: "TPNMediationIMAAdapterTarget",
            dependencies: [
                "AnyThinkIMAAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "GoogleInteractiveMediaAds", package: "swift-package-manager-google-interactive-media-ads-ios")
            ],
            path: "Sources/TPNMediationIMAAdapterTarget"
        )
    ]
)