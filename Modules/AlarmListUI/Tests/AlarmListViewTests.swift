//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import Testing

import ViewInspector

@testable import FiveAlarmListUI

@MainActor
struct AlarmListViewTests {
    @Test func navigationTitle() throws {
        let contentView = try AlarmListView().inspect()
        let list = try contentView.find(ViewType.List.self)

        let title = try list.navigationTitle()
        #expect(title == Strings.AlarmListView.navigationTitle)
    }

    @Test func toolbar() throws {
        let contentView = try AlarmListView().inspect()
        let list = try contentView.find(ViewType.List.self)

        let toolbar = try list.toolbar()
        _ = try toolbar.find(AddButton.self)
    }
}
