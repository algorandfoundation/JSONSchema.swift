// swift-tools-version:5.0

import PackageDescription

let package = Package(
  name: "JSONSchema",
  platforms: [
    .macOS(.v10_13),
  ],
  products: [
    .library(name: "JSONSchema", targets: ["JSONSchema"]),
  ],
  dependencies: [
    .package(url: "https://github.com/kylef/PathKit.git", .upToNextMajor(from: "1.0.0")),
    .package(url: "https://github.com/kylef/Spectre.git", exact: "0.10.1")
  ],
  targets: [
    .target(name: "JSONSchema", dependencies: [], path: "Sources"),
    .testTarget(name: "JSONSchemaTests", dependencies: ["JSONSchema", "Spectre", "PathKit"]),
  ]
)
