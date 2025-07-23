//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI
import Testing

import ViewInspector

@testable import FiveAlarmListUI

@MainActor
struct ListItemCountTextTests {
    @Test func body() throws {
        let countText = try ListItemCountText().inspect()
        let innerText = try countText.find(ViewType.Text.self)

        let font = try innerText.attributes().font()
        #expect(font == .subheadline)
    }
}

