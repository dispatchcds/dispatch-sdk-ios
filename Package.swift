// swift-tools-version: 5.9
// Дистрибуционный манифест DispatchSDK (iOS): бинарная доставка XCFramework
// через GitHub Releases. Исходники SDK — в приватном репозитории Dispatch CDS.
import PackageDescription

let package = Package(
    name: "DispatchSDK",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(name: "DispatchSDK", targets: ["DispatchSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "DispatchSDK",
            url: "https://github.com/dispatchcds/dispatch-sdk-ios/releases/download/0.1.1/DispatchSDK.xcframework.zip",
            checksum: "48c5cf2ae4a84307141985224b618bee5b3915c5cc9ec152e43a599dcf11a611"
        ),
    ]
)
