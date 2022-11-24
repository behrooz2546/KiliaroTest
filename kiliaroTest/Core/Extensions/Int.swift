//
//  Float.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 06/10/2022.
//

import SwiftUI
import UIKit

extension Int {
    
    enum Device {
        case iPhone
        var size: (width: CGFloat, height: CGFloat) {
            switch self {
            case .iPhone:
                    return (375, 812)
            }
        }
    }
    
    var w: CGFloat {
        get {
            UIScreen.main.bounds.width * (CGFloat(self) / Device.iPhone.size.width)
        }
    }
    
    var h: CGFloat {
        get {
            UIScreen.main.bounds.height * (CGFloat(self) / Device.iPhone.size.height)
        }
    }
    
    var verticalSpace: some View {
        get {
            Spacer()
                .frame(height: UIScreen.main.bounds.height * (CGFloat(self) / Device.iPhone.size.height))
                
        }
    }
    
    var horizontalSpace: some View {
        get {
            Spacer()
                .frame(width: UIScreen.main.bounds.width * (CGFloat(self) / Device.iPhone.size.width))
        }
    }
}
