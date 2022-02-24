// swift-tools-version:5.3
import PackageDescription

let package = Package(
  name: "RiveRuntime",
  platforms: [.iOS("11.0"), .macOS("10.10"), .tvOS("11.0")],
  products: [
    .library(
      name: "RiveRuntime", 
      targets: ["foo"])],
  targets: [
    .binaryTarget(
      name: "foo",
      path: "RiveRuntime.xcframework"
    ),
  ]
)
