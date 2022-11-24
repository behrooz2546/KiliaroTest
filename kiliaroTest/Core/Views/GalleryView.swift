//
//  GalleryView.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import SwiftUI

struct GridView: View {
    
    var images: [ImageModel]
    private static let initialColumns = 3
    var gridColumns = Array(repeating: GridItem(.flexible()), count: initialColumns)
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(images) { item in
                        GeometryReader { geo in
                            NavigationLink(destination: ImageDetailsPage(item: item)) {
                                GalleryGridItemView(size: geo.size.width, item: item)
                            }
                        }
                        .cornerRadius(8.0)
                        .aspectRatio(1, contentMode: .fit)
                        .overlay(alignment: .topTrailing) {}
                    }
                }
                .padding()
            }
        }
        .navigationBarTitle("Image Gallery")
        .navigationBarTitleDisplayMode(.inline)
        
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView(images: [ImageModel.example])
    }
}
