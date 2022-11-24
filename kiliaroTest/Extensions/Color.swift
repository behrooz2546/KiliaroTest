//
//  Color.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 05/10/2022.
//

import Foundation
import UIKit
import SwiftUI

extension UIColor {
    static var lightBlue: UIColor { return UIColor(red: 100 / 255, green: 181 / 255, blue: 246 / 255, alpha: 1) }
    static var darkBlue: UIColor { return UIColor(red: 30 / 255, green: 136 / 255, blue: 229 / 255, alpha: 1) }
}

extension Color {
    public static var lightBlue: Color {
        return Color(red: 90.0 / 255.0, green: 255.0 / 255.0, blue: 255.0 / 255.0)
    }
    static var backgroundPrimary: Color { return Color(red: 242 / 255, green: 242 / 255, blue: 242 / 255) }
    static var salmon: Color { return Color(red: 250/255, green: 128/255, blue: 115/255, opacity: 1) }
    static var backgroundStateDisabled: Color { return Color(red: 26/255, green: 33/255, blue: 77/255, opacity: 0.05) }
    static var contentContentPrimary: Color { return Color(red: 26/255, green: 33/255, blue: 77/255, opacity: 1) }
    static var contentContentSecondary: Color { return Color(red: 26/255, green: 33/255, blue: 77/255, opacity: 0.6) }
    static var contentContentStateDisabled: Color { return Color(red: 26/255, green: 33/255, blue: 77/255, opacity: 0.3) }
    
}
