//
//  ByteUtils.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation

class ByteUtils {
    
    static func getSizeText(bytes: Int) -> String {
        let formatter = ByteCountFormatter()
        formatter.allowsNonnumericFormatting = false
        formatter.countStyle = .file
        return formatter.string(fromByteCount: Int64(bytes))
    }
}
