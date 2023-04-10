// swift-tools-version: 5.8

///
import PackageDescription

///
let package = Package(
    name: "Named-module",
    products: [
        .library(
            name: "Named-module",
            targets: ["Named-module"]
        ),
    ],
    dependencies: [
        
        ///
        .package(
            url: "https://github.com/jeremyabannister/Name-module",
            "0.1.0" ..< "0.2.0"
        ),
    ],
    targets: [
        .target(
            name: "Named-module",
            dependencies: [
                "Name-module",
            ]
        ),
        .testTarget(
            name: "Named-tests",
            dependencies: ["Named-module"]
        ),
    ]
)
