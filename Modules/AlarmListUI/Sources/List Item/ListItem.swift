//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI

struct ListItem: View {
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 0) {
                ListItemTimeText()
                ListItemCountText()
            }
            Spacer()
            ListItemToggle(isOn: .constant(true))
        }
    }
}

#Preview {
    List {
        ListItem()
    }.listStyle(.plain)
}
