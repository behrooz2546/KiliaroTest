//
//  String.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 08/10/2022.
//

import Foundation
import SwiftUI

extension String {
    public func tr() -> LocalizedStringKey {
        return LocalizedStringKey(self)
    }
}
