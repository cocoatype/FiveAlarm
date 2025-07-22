// swift-tools-version: 5.9
import PackageDescription

#if TUIST
import ProjectDescription
import ProjectDescriptionHelpers

let packageSettings = PackageSettings(
    productTypes: [
        "FactoryKit": .framework,
        "FactoryTesting": .framework,
        "TelemetryClient": .framework,
        "TelemetryDeck": .framework,
        "ViewInspector": .framework,
    ],
    baseSettings: Shared.settings,
    targetSettings: [
        "FactoryKit": Shared.settings,
        "FactoryTesting": Shared.settings,
        "TelemetryClient": Shared.settings,
        "TelemetryDeck": Shared.settings,
        "ViewInspector": .settings(
            base: [
                "SWIFT_VERSION": "5.0",
            ]
        ),
    ]
)
#endif

let package = Package(
    name: "Dependencies",
    dependencies: [
        .package(url: "git@github.com:hmlongco/Factory.git", from: "2.5.0"),
        .package(url: "git@github.com:TelemetryDeck/SwiftClient.git", from: "2.6.0"),
        .package(url: "git@github.com:nalexn/ViewInspector.git", exact: "0.10.2"),
    ]
)
