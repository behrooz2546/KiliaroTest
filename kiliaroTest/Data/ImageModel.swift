//
//  ImageModel.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation

struct ImageModel: Codable {
    let id: String
    let userId: String?
    let mediaType: String?
    let filename: String?
    let size: Int?
    let createdAt: Date?
    let takenAt: Date?
    let guessedTakenAt: String?
    let md5sum: String?
    let contentType: String?
    let video: String?
    let thumbnailUrl: String?
    let downloadUrl: String?
    let resx: Int?
    let resy: Int?
}
