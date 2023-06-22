// swift-tools-version: 5.7
import PackageDescription
 
let package = Package(
    name: "MyFullLibrary",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "MyFullLibrary",
            targets: ["MyFullLibrary"]),
    ],
    dependencies: [
        .package(
            url: "https://github.com/carmelojcortes/MyLibraryFramework.git",
            branch: "main"
        ),
        .package(
            url: "https://github.com/carmelojcortes/MyLibraryCoreFramework.git",
            branch: "main"
        )
    ],
    targets: [
        .target(
            name: "MyFullLibrary",
            dependencies: [
                "MyLibraryFramework",
                "MyLibraryCoreFramework"
             ]
        ),
    ]
)