//  Created by Geoff Pado on 7/22/25.
//  Copyright © 2025 Cocoatype, LLC. All rights reserved.

import SwiftUI

struct RGB: Hashable {
    let red: Double
    let green: Double
    let blue: Double

    init(hex: Int) {
        red = Double((hex & 0xFF0000) >> 16)
        green = Double((hex & 0x00FF00) >> 8)
        blue = Double((hex & 0x0000FF) >> 0)
    }
}
