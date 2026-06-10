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
            url: "https://github.com/dispatchcds/dispatch-sdk-ios/releases/download/0.1.0/DispatchSDK.xcframework.zip",
            checksum: "6d3238c6857b1b4baeee20ff66eb5ee6e52b6534e794d2e63330f6728374fba4"
        ),
    ]
)
