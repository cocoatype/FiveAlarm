//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI

import FiveDesignSystem

public struct AlarmListView: View {
    public init() {}

    public var body: some View {
        List {
        }
        .navigationTitle(.constant(Strings.AlarmListView.navigationTitle))
        .toolbar {
            ToolbarSpacer(placement: .bottomBar)
            ToolbarItem(placement: .bottomBar) { AddButton() }
        }
    }
}

#Preview {
    AlarmListView()
}
