//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI

struct AddButton: View {
    var body: some View {
        Button {
        } label: {
            Image(systemName: "plus")
                .fontWeight(.bold)
        }
        .buttonStyle(.borderedProminent)
        .tint(Color.accent)
    }
}

