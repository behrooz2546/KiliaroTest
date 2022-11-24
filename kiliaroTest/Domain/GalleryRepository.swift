//
//  repository.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation

protocol GalleryRepository {
    func getImages(width: Int, height: Int, resizableMode: ResizableMode) async throws -> [ImageModel]
}
