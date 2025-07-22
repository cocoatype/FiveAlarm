//  Created by Geoff Pado on 8/23/24.
//  Copyright © 2024 Cocoatype, LLC. All rights reserved.

import FactoryKit

import FiveLogging

struct DefaultHandler: ErrorHandler {
    @Injected(\.logger) private var logger

    private let eventFactory = EventFactory()
    func log(_ error: any Error, module: StaticString, type: StaticString) {
        logger.log(eventFactory.event(from: error, module: module, type: type))
    }

    func fatalErrorEvent(
        message: StaticString,
        file: StaticString,
        line: UInt
    ) -> Event {
        Event(
            name: "fatalError",
            info: [
                "message": String(message),
                "file": String(file),
                "line": String(line)
            ]
        )
    }

    func fatalError(
        message: StaticString,
        file: StaticString,
        line: UInt
    ) -> Never {
        logger.log(fatalErrorEvent(message: message, file: file, line: line))
        Swift.fatalError(String(message), file: file, line: line)
    }
}
