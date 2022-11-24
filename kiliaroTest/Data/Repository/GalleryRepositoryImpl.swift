//
//  GalleryRepository.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation

final class GalleryRepositoryImpl: GalleryRepository {
    
    let dataSource: GalleryDataSource
    
    init(dataSource: GalleryDataSource) {
        self.dataSource = dataSource
    }
    
    func getImages(width: Int, height: Int, resizableMode: ResizableMode) async throws -> [ImageModel] {
        
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        jsonDecoder.dateDecodingStrategy = .iso8601
        
        let images: [ImageModel] = try await withCheckedThrowingContinuation({ continuation in
            dataSource.getImages(width: width, height: height, resizableMode: resizableMode)
                .map([ImageModel].self, using: jsonDecoder)
                .subscribe { response in
                    continuation.resume(returning: response)
                } onFailure: { error in
                    debugPrint(error.localizedDescription)
                    continuation.resume(throwing: error)
                } onDisposed: {}
        })
        
        return images
    }
}
