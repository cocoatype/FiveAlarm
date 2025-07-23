//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI
import Testing

import ViewInspector

@testable import FiveAlarmListUI

@MainActor
struct ListItemTimeTextTests {
    @Test func body() throws {
        let timeText = try ListItemTimeText().inspect()
        let innerText = try timeText.find(ViewType.Text.self)

        let font = try innerText.attributes().font()
        #expect(font == .largeTitle)
    }
}

