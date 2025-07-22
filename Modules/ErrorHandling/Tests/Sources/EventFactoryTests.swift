//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import Foundation
import Testing

@testable import FiveErrorHandling
@testable import FiveLogging

struct EventFactoryTests {
    @Test func eventFromSwiftError() {
        let factory = EventFactory()
        enum StubError: Error { case test }

        let event = factory.event(
            from: StubError.test,
            module: "ErrorHandlingTests",
            type: "EventFactoryTests"
        )

        #expect(event.value == "TelemetryDeck.Error.occurred")
        #expect(event.info["TelemetryDeck.Error.id"] == "test")
        #expect(event.info["Cocoatype.Error.module"] == "ErrorHandlingTests")
        #expect(event.info["Cocoatype.Error.type"] == "EventFactoryTests")
    }

    @Test func eventFromNSError() {
        let factory = EventFactory()

        let event = factory.event(
            from: NSError(domain: "EventFactoryTests", code: 42),
            module: "ErrorHandlingTests",
            type: "EventFactoryTests"
        )

        #expect(event.value == "TelemetryDeck.Error.occurred")
        #expect(event.info["TelemetryDeck.Error.id"] == "EventFactoryTests - 42")
        #expect(event.info["Cocoatype.Error.module"] == "ErrorHandlingTests")
        #expect(event.info["Cocoatype.Error.type"] == "EventFactoryTests")
    }
}
