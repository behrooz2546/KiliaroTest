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
    
    private var columnsTitle: String {
        gridColumns.count > 1 ? "\(gridColumns.count) Columns" : "1 Column"
    }
    
    var body: some View {
        VStack {
            ScrollView {
                LazyVGrid(columns: gridColumns) {
                    ForEach(images) { item in
                        GeometryReader { geo in
                            NavigationLink(destination: ItemDetailsView(item: item)) {
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
