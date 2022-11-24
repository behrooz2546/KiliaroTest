//
//  GalleryItem.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import SwiftUI

struct GalleryGridItemView: View {
    let size: Double
    let item: ImageModel

    var body: some View {
        ZStack(alignment: .bottomLeading) {
            KingFisherImageView(url: item.thumbnailUrl ?? "")
            Text(item.getSizeText())
                .font(.caption)
                .foregroundColor(Color.white)
                .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
                .background(Color.black)
                .opacity(0.7)
        }
    }
}

struct GalleryItem_Previews: PreviewProvider {
    static var previews: some View {
        GalleryGridItemView(size: 100, item: ImageModel.example)
    }
}
