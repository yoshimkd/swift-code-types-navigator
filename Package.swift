// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "SwiftDiagramGenerator",
    dependencies: [
        .package(
            url: "https://github.com/yanagiba/swift-ast.git",
            .exact("0.4.1"))
    ],
    targets: [
        .target(
            name: "SwiftDiagramGenerator",
            dependencies: ["SwiftDiagramComponentsGenerator"]),
        .target(
            name: "SwiftDiagramComponentsGenerator",
            dependencies: ["SwiftAST"]),
        .testTarget(
            name: "SwiftDiagramComponentsGeneratorTests",
            dependencies: ["SwiftDiagramComponentsGenerator"])
    ],
    swiftLanguageVersions: [4]
)
