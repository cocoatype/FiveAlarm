//  Created by Geoff Pado on 12/25/24.
//  Copyright © 2024 Cocoatype, LLC. All rights reserved.

import Testing

import ViewInspector

@testable import FiveRoot

@MainActor
struct ContentViewTests {
    @Test func body() throws {
        let contentView = try ContentView().inspect()
        let color = try contentView.find(ViewType.Color.self)
        try #expect(color.value() == .clear)
    }
}
