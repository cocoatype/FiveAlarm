//  Created by Geoff Pado on 5/5/23.
//  Copyright © 2023 Cocoatype, LLC. All rights reserved.

import Synchronization
import Testing

import TelemetryClient

@testable import FiveLogging

struct TelemetryLoggerTests {
    @Test func bareInitInitializesTelemetryManager() {
        #expect(TelemetryManager.isInitialized == false)

        _ = TelemetryLogger()

        #expect(TelemetryManager.isInitialized == true)
    }

    @Test func logSendsEventNameAndInfo() throws {
        let spy = SpySender()
        let logger = TelemetryLogger(manager: spy)

        logger.log(Event(name: "test", info: ["key": "value"]))

        let spyName = try #require(spy.name)
        let spyInfo = try #require(spy.info)
        #expect(spyName == "test")
        #expect(spyInfo == ["key": "value"])
    }
}

private final class SpySender: TelemetrySending {
    let _name: Mutex<String?> = Mutex(nil)
    var name: String? {
        get { _name.withLock { $0 } }
        set { _name.withLock { $0 = newValue } }
    }
    let _info: Mutex<[String: String]?> = Mutex(nil)
    var info: [String: String]? {
        get { _info.withLock { $0 } }
        set { _info.withLock { $0 = newValue } }
    }

    func send(
        _ signalName: String,
        for clientUser: String?,
        floatValue: Double?,
        with additionalPayload: [String: String]
    ) {
        name = signalName
        info = additionalPayload
    }
}
