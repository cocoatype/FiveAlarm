//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import Testing

import ViewInspector

@testable import FiveAlarmListUI

@MainActor
struct ListItemTests {
    @Test func body() throws {
        let listItem = try ListItem().inspect()

        _ = try listItem.find(ListItemTimeText.self)
        _ = try listItem.find(ListItemCountText.self)
        _ = try listItem.find(ListItemToggle.self)
    }
}
