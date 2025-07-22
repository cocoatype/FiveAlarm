// swift-tools-version: 5.9
import PackageDescription

#if TUIST
import ProjectDescription
import ProjectDescriptionHelpers

let packageSettings = PackageSettings(
    productTypes: [
        "TelemetryClient": .framework,
        "TelemetryDeck": .framework,
    ],
    baseSettings: Shared.settings,
    targetSettings: [
        "TelemetryClient": Shared.settings,
        "TelemetryDeck": Shared.settings,
    ]
)
#endif

let package = Package(
    name: "Dependencies",
    dependencies: [
        .package(url: "git@github.com:TelemetryDeck/SwiftClient.git", from: "2.6.0"),
    ]
)
