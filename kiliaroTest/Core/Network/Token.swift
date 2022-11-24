//
//  Token.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Foundation

struct Token: Decodable {
  let tokenType: String
  let accessToken: String
  let refreshToken: String
  let expiresAt: TimeInterval
}
