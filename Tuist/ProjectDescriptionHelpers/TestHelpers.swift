import ProjectDescription

public enum TestHelpers {
    public static let target = Target.target(
        name: "FiveTestHelpers",
        destinations: [.iPhone],
        product: .framework,
        bundleId: "\(Shared.bundleID).TestHelpers",
        sources: ["Modules/TestHelpers/Sources/**"],
        dependencies: [
            .target(interfaceTarget),
            .xctest,
        ],
        settings: .settings(
            base: [
                "CODE_SIGN_IDENTITY": "",
                "DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER": false,
                "ENABLE_MODULE_VERIFIER": true,
                "MODULE_VERIFIER_SUPPORTED_LANGUAGE_STANDARDS": ["gnu11", "gnu++14"],
            ]
        )
    )

    public static let interfaceTarget = Target.target(
        name: "FiveTestHelpersInterface",
        destinations: [.iPhone],
        product: .framework,
        bundleId: "\(Shared.bundleID).TestHelpersInterface",
        sources: ["Modules/TestHelpers/Interface/**"],
        settings: .settings(
            base: [
                "CODE_SIGN_IDENTITY": "",
                "DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER": false,
                "ENABLE_MODULE_VERIFIER": true,
                "MODULE_VERIFIER_SUPPORTED_LANGUAGE_STANDARDS": ["gnu11", "gnu++14"],
            ]
        )
    )
}
