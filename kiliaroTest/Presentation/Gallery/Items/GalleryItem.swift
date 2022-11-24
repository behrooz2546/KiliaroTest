//
//  GalleryItem.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import SwiftUI

struct GalleryItem: View {
    let size: Double
    let item: ImageModel

    var body: some View {
        ZStack(alignment: .topTrailing) {
            KingFisherImageView(url: item.thumbnailUrl ?? "")
            

//            AsyncImage(url: URL(string: item.thumbnailUrl ?? "")) { image in
//                image
//                    .resizable()
//                    .scaledToFill()
//            } placeholder: {
//                ProgressView()
//            }
//            .frame(width: size, height: size)
        }
    }
}

struct GalleryItem_Previews: PreviewProvider {
    static var previews: some View {
        GalleryItem(size: 100, item: ImageModel.example)
    }
}
