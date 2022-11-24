//
//  GalleryViewModel.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation
import UIKit
import SwiftUI

@MainActor
class GalleryPageViewModel: ObservableObject {
    
    @Published var isLoading: Bool = false
    @Published var models = [ImageModel]()
    @Published var error: String?
    @Published var showErrorAlert: Bool = false
    
    let repository: GalleryRepository
    
    init(repository: GalleryRepository) {
        self.repository = repository
    }
    
    func loadImages() async throws {
        
        do {
            self.isLoading = true
            self.models = try await repository.getImages(width: 100, height: 100, resizableMode: .bb)
            self.isLoading = false
        } catch let (error) {
            debugPrint(error)
            self.isLoading = false
            self.error = error.localizedDescription
            self.showErrorAlert = true
        }
    }
}
