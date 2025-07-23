//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI
import Testing

import ViewInspector

@testable import FiveAlarmListUI

@MainActor
struct ListItemToggleTests {
    @Test func body() throws {
        let isOn = Binding<Bool>(wrappedValue: false)
        let toggle = try ListItemToggle(isOn: isOn).inspect()
        let innerToggle = try toggle.find(ViewType.Toggle.self)

        try innerToggle.tap()

        #expect(isOn.wrappedValue == true)
    }
}

