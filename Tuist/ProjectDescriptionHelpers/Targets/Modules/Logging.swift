import ProjectDescription

public enum Logging {
    public static let target = Target.moduleTarget(
        name: "Logging",
        destinations: [.iPhone, .appleWatch, .mac],
        dependencies: [
            .external(FactoryKit.target),
            .external(TelemetryDeck.target),
        ]
    )

    public static let testTarget = Target.moduleTestTarget(
        name: "Logging",
        dependencies: [
            .external(TelemetryDeck.target),
        ]
    )

    public static let doublesTarget = Target.moduleDoublesTarget(name: "Logging")
}
