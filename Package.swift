// swift-tools-version: 5.6
// Copyright © 2026 Yodo1 Games. All rights reserved.

import PackageDescription

let package = Package(
    name: "Yodo1MasMediationMintegral",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "Yodo1MasMediationMintegral", targets: ["Yodo1MasMediationMintegralTarget"]),
        .library(name: "Yodo1MasMediationMintegral-AppLovinMediationMintegralAdapter", targets: ["Yodo1MasMediationMintegral-AppLovinMediationMintegralAdapterTarget"]),
        .library(name: "Yodo1MasMediationMintegral-MintegralAdapter", targets: ["Yodo1MasMediationMintegral-MintegralAdapterTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/AppLovin/AppLovin-MAX-Swift-Package.git", exact: "13.6.4"),
        .package(url: "https://github.com/googleads/swift-package-manager-google-mobile-ads.git", exact: "13.11.0"),
        .package(url: "https://github.com/Mintegral-official/MintegralAdSDK-Swift-Package.git", exact: "8.1.7"),
        .package(url: "https://github.com/Yodo1Games/MAS-Swift-Package-Core.git", exact: "5.0.0-beta.5"),
    ],
    targets: [
        // ==================== Yodo1MasMediationMintegral ====================
        .target(
            name: "Yodo1MasMediationMintegralTarget",
            dependencies: [
                .target(name: "Yodo1MasMediationMintegral"),
                .product(name: "Yodo1MasCore", package: "MAS-Swift-Package-Core"),
                .product(name: "MintegralAdSDK", package: "MintegralAdSDK-Swift-Package"),
            ],
            path: "Sources/Yodo1MasMediationMintegralTarget",
            resources: [.copy("Yodo1MasMintegral.plist")]
        ),
        .binaryTarget(
            name: "Yodo1MasMediationMintegral",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationMintegral/Yodo1MasMediationMintegral-5.0.0-beta.5.zip",
            checksum: "9b3a38d7916d2f0c7f338e253c080d6fc604e296bc10efd6da7d94663def69b9"
        ),
        // ==================== Yodo1MasMediationMintegral-AppLovinMediationMintegralAdapter ====================
        .target(
            name: "Yodo1MasMediationMintegral-AppLovinMediationMintegralAdapterTarget",
            dependencies: [
                .target(name: "Yodo1MasMediationMintegralTarget"),
                .product(name: "AppLovinSDK", package: "AppLovin-MAX-Swift-Package"),
                .target(name: "AppLovinMediationMintegralAdapter"),
            ],
            path: "Sources/Yodo1MasMediationMintegral-AppLovinMediationMintegralAdapterTarget"
        ),
        .binaryTarget(
            name: "AppLovinMediationMintegralAdapter",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationMintegral/AppLovinMediationMintegralAdapter-5.0.0-beta.5.zip",
            checksum: "9ead13fad14e345b12b7f1f2379dbd7124b1b6f8e95a76302848a5462ed2ad4b"
        ),
        // ==================== Yodo1MasMediationMintegral-MintegralAdapter ====================
        .target(
            name: "Yodo1MasMediationMintegral-MintegralAdapterTarget",
            dependencies: [
                .target(name: "Yodo1MasMediationMintegralTarget"),
                .product(name: "GoogleMobileAds", package: "swift-package-manager-google-mobile-ads"),
                .target(name: "MintegralAdapter"),
            ],
            path: "Sources/Yodo1MasMediationMintegral-MintegralAdapterTarget"
        ),
        .binaryTarget(
            name: "MintegralAdapter",
            url: "https://mas-artifacts.yodo1.com/5.0.0-beta.5/iOS/Pre/spm/Yodo1MasMediationMintegral/MintegralAdapter-5.0.0-beta.5.zip",
            checksum: "72c2aac587cc8adbc3106b9160ff7dbae2422553be3d45cfd5584e14307d1b2b"
        ),
    ]
)
