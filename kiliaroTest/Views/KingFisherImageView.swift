//
//  KingFisherImageView.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import SwiftUI
import struct Kingfisher.KFImage
import struct Kingfisher.AnyModifier

@ViewBuilder
func KingFisherImageView(url: String) -> some View {
    KFImage(
        URL(string: url)
    )
    .placeholder({
        ProgressView()
    })
        .resizable()
        .frame(width: 128, height: 128)
        .cornerRadius(8)
        
}
