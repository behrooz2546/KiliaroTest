//
//  GalleryPage.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import SwiftUI

struct GalleryPage: View {
    
    @StateObject var viewModel = GalleryViewModel(
        repository: GalleryRepositoryImpl(
            dataSource: GalleryDataSource()
        )
    )
    
    var body: some View {
        NavigationStack {
            GridView(images: viewModel.models)
        }
        .alert(viewModel.error ?? "" ,isPresented: $viewModel.showErrorAlert) {
            Button("OK", role: .cancel) { }
        }
        .onAppear() {
            Task {
                try await viewModel.loadImages()
            }
        }
            
    }
}

struct GalleryPage_Previews: PreviewProvider {
    static var previews: some View {
        GalleryPage()
    }
}
