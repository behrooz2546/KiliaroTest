//
//  Font.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 11/10/2022.
//

import Foundation
import SwiftUI

extension Font {
    enum Roboto: String {
        case light
        case medium
        case regular
        
        var value: String {
            switch self {
            case .light:
                return "Roboto-Light"
            case .medium:
                return "Roboto-Medium"
            case .regular:
                return "Roboto-Regular"
            }
        }
    }
    
    enum SharpGrotesk: String {
        case medium20
        case medium21
        
        var value: String {
            switch self {
            case .medium20:
                return "SharpGroteskMedium20-Regular"
            case .medium21:
                return "SharpGroteskMedium21"
            }
        }
    }
    
    
    static func sharpGrotesk(_ type: SharpGrotesk, size: CGFloat = 26) -> Font {
        return .custom(type.value, size: size, relativeTo: .body)
    }
    
    static func roboto(_ type: Roboto, size: CGFloat = 26) -> Font {
        return .custom(type.value, size: size)
    }
    
    static func ocr(size: CGFloat = 26) -> Font {
        return .custom("OCRAStd", size: size)
    }
}
