//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import Testing

import ViewInspector

@testable import FiveAlarmListUI

@MainActor
struct AlarmListViewTests {
    @Test func body() throws {
        let contentView = try AlarmListView().inspect()
        let color = try contentView.find(ViewType.Color.self)
        try #expect(color.value() == .clear)
    }
}
