//
//  ResponseError.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Foundation

struct ResponseError: Decodable, Error {
  var statusCode: Int?
  let message: String
  let documentation_url: String
}
