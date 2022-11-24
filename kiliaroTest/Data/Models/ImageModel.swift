//
//  ImageModel.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation

struct ImageModel: Codable, Identifiable {
    let id: String
    let size: Int?
    let createdAt: Date?
    let thumbnailUrl: String?
    let downloadUrl: String?
    
    func getCreatedDateText() -> String {
        if let createdAt {
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .medium
            return dateFormatter.string(from: createdAt)
        }
        return ""
    }
    
    func getSizeText() -> String {
        if let size {
            return ByteUtils.getSizeText(bytes: size)
        }
        
        return ""
    }
    
    #if DEBUG
    static let example = ImageModel(
        id: "60cc705d0025904750ee22d300020eb4",
        size: 983178,
        createdAt: Date.now,
        thumbnailUrl: "https://imgdc1.kiliaro.com/shared/djlCbGusTJamg_ca4axEVw/imageresize/i/60cc705d0025904750ee22d300020eb4/0.jpg",
        downloadUrl: "https://imgdc1.kiliaro.com/shared/djlCbGusTJamg_ca4axEVw/images/60cc705d0025904750ee22d300020eb4/download/tanjir-ahmed-chowdhury-FCfu2MtA4Pw-unsplash.jpg"
    )
    #endif
}
