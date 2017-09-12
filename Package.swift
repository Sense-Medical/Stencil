// swift-tools-version:4.0

import Foundation
import PackageDescription

let package = Package(
  name: "Stencil",
  products: [
    .library(name: "Stencil", targets: ["Stencil"])
  ],
  dependencies: [
    .package(url: "https://github.com/Sense-Medical/PathKit.git", .branch("cortex")),
    // https://github.com/apple/swift-package-manager/pull/597
    .package(url: "https://github.com/Sense-Medical/Spectre.git", .branch("cortex")),
  ],
  targets: [
    .target(name: "Stencil", dependencies: ["PathKit"], path: "Sources"),
    .testTarget(name: "StencilTests", dependencies: ["Stencil", "Spectre"], path: "Tests")
  ]
)
