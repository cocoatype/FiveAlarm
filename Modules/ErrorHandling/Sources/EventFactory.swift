//  Created by Geoff Pado on 8/23/24.
//  Copyright © 2024 Cocoatype, LLC. All rights reserved.

import Foundation

import FiveLogging

struct EventFactory {
    func event(from error: Error, module: StaticString, type: StaticString) -> Event {
        let errorID: String
        if Swift.type(of: error) is NSError.Type {
            let nsError = error as NSError
            errorID = "\(nsError.domain) - \(nsError.code)"
        } else {
            errorID = String(describing: error)
        }

        return Event(
            name: Self.logError,
            info: [
                Self.telemetryErrorIDKey: errorID,
                Self.errorModuleKey: String(module),
                Self.errorTypeKey: String(type),
                Self.errorDescriptionKey: error.localizedDescription
            ]
        )
    }

    // MARK: Event Names

    private static let logError = Event.Name("TelemetryDeck.Error.occurred")

    // MARK: Event Keys

    private static let telemetryErrorIDKey = "TelemetryDeck.Error.id"
    private static let errorModuleKey = "Cocoatype.Error.module"
    private static let errorTypeKey = "Cocoatype.Error.type"
    private static let errorDescriptionKey = "Cocoatype.Error.description"
}
