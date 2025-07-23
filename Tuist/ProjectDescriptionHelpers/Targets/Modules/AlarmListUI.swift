import ProjectDescription

public enum AlarmListUI {
    public static let target = Target.moduleTarget(
        name: "AlarmListUI",
        dependencies: [
            .target(DesignSystem.target),
        ]
    )

    public static let testTarget = Target.moduleTestTarget(
        name: "AlarmListUI",
        dependencies: [
            .external(ViewInspector.target),
        ]
    )
}
