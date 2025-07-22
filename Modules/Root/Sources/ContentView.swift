//  Created by Geoff Pado on 12/25/24.
//  Copyright © 2024 Cocoatype, LLC. All rights reserved.

import SwiftUI

public struct ContentView: View {
    public init() {}

    public var body: some View {
        Color.clear
            .toolbar {
                ToolbarSpacer(placement: .bottomBar)
                ToolbarItem(placement: .bottomBar) {
                    Button {
                    } label: {
                        Image(systemName: "plus")
                            .fontWeight(.bold)
                    }
                    .buttonStyle(.borderedProminent)
                    .tint(
                        Color(
                            red: 255.0 / 255.0,
                            green: 66.0 / 255.0,
                            blue: 41.0 / 255.0
                        )
                    )
                }
            }
    }
}

#Preview {
    ContentView()
}
