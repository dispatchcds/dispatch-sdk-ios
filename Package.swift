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
            url: "https://github.com/dispatchcds/dispatch-sdk-ios/releases/download/0.2.0/DispatchSDK.xcframework.zip",
            checksum: "095c64b93fe1e08e1e820535735e2cef32918de089292af7fdb2c29772c87d97"
        ),
    ]
)
