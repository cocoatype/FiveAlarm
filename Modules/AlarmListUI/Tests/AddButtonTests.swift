//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI
import Testing

import ViewInspector

import FiveDesignSystem

@testable import FiveAlarmListUI

@MainActor
struct AddButtonTests {
    @Test func body() throws {
        let addButton = try AddButton().inspect()
        let internalButton = try addButton.button()

        try internalButton.tap()

        let tintColor = try #require(try internalButton.tint())
        #expect(tintColor == Color.accent)

        let label = try internalButton.labelView()
        let name = try label.image().actualImage().name()
        #expect(name == "plus")
    }
}
