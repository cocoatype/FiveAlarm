//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI

struct ListItemToggle: View {
    @Binding private var isOn: Bool
    init(isOn: Binding<Bool>) {
        _isOn = isOn
    }

    var body: some View {
        Toggle(isOn: $isOn) {}
    }
}
