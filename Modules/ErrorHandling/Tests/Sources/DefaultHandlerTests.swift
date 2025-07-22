//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import Testing

import FactoryKit
import FactoryTesting

import FiveLoggingDoubles

@testable import FiveLogging
@testable import FiveErrorHandling

@Suite(.container)
struct DefaultHandlerTests {
    @Test func log() throws {
        let logger = SpyLogger()
        Container.shared.logger.register { logger }
        enum StubError: Error { case test }
        let expectedEvent = EventFactory().event(
            from: StubError.test,
            module: "ErrorHandlingTests",
            type: "DefaultHandlerTests"
        )

        let handler = DefaultHandler()
        handler.log(
            StubError.test,
            module: "ErrorHandlingTests",
            type: "DefaultHandlerTests"
        )

        let actualEvent = try #require(logger.loggedEvents.first)
        #expect(actualEvent.value == expectedEvent.value)
        #expect(actualEvent.info == expectedEvent.info)
    }

    @Test func fatalErrorEvent() throws {
        let expectedEvent = Event(
            name: "fatalError",
            info: [
                "message": "message",
                "file": "DefaultHandlerTests",
                "line": "42",
            ]
        )
        let handler = DefaultHandler()
        let actualEvent = handler.fatalErrorEvent(
            message: "message",
            file: "DefaultHandlerTests",
            line: 42,
        )

        #expect(actualEvent.value == expectedEvent.value)
        #expect(actualEvent.info == expectedEvent.info)
    }
}
