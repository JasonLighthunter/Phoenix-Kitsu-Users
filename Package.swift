// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
  name: "PhoenixKitsuUsers",
  products: [
    .library(name: "PhoenixKitsuUsers", targets: ["PhoenixKitsuUsers"])
  ],
  dependencies: [
    .package(url: "https://github.com/JasonLighthunter/Requestable.git", from: "1.0.0"),
    .package(url: "https://github.com/JasonLighthunter/Phoenix-Kitsu-Core.git", from: "0.1.3")
  ],
  targets: [
    .target(name: "PhoenixKitsuUsers", dependencies: ["Requestable", "PhoenixKitsuCore"]),
    .testTarget(name: "PhoenixKitsuUsersTests", dependencies: ["PhoenixKitsuUsers"])
  ]
)
