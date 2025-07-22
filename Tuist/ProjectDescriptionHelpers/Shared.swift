import ProjectDescription

public enum Shared {
    public static let appName = "FiveAlarm"
    public static let bundleID = "com.cocoatype.FiveAlarm"
    public static let settings: Settings = .settings(base: [
        "ASSETCATALOG_COMPILER_GENERATE_SWIFT_ASSET_SYMBOL_EXTENSIONS": false,
        "CODE_SIGN_IDENTITY": "",
        "CODE_SIGN_STYLE": "Manual",
        "CURRENT_PROJECT_VERSION": "0",
        "DERIVE_MACCATALYST_PRODUCT_BUNDLE_IDENTIFIER": "NO",
        "DEVELOPMENT_TEAM": "287EDDET2B",
        "ENABLE_HARDENED_RUNTIME[sdk=macosx*]": "YES",
        "ENABLE_MODULE_VERIFIER": true,
        "ENABLE_USER_SCRIPT_SANDBOXING": true,
        "IPHONEOS_DEPLOYMENT_TARGET": "26.0",
        "MACOSX_DEPLOYMENT_TARGET": "26.0",
        "WATCHOS_DEPLOYMENT_TARGET": "26.0",
        "MARKETING_VERSION": "25.0",
        "STRING_CATALOG_GENERATE_SYMBOLS": false,
        "SWIFT_VERSION": "6.0",
        "SWIFT_MAX_VERSION_1500": "5.0",
        "SWIFT_MAX_VERSION_1600": "6.0",
        "SWIFT_MAX_VERSION_2600": "6.0",
        "SWIFT_MAX_VERSION": "$(SWIFT_MAX_VERSION_$(XCODE_VERSION_MAJOR))",
        "TARGETED_DEVICE_FAMILY": "1",
    ], debug: [
         :
    ], release: [
         "SWIFT_COMPILATION_MODE": "wholemodule",
    ])
}
