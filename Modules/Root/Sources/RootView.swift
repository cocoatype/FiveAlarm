//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI

import FiveAlarmListUI

public struct RootView: View {
    public init() {}

    public var body: some View {
        NavigationStack {
            AlarmListView()
        }
    }
}
