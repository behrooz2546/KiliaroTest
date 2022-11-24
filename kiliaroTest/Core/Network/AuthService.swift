//
//  AuthService.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Foundation
import Moya
import RxSwift

final class AuthService: BaseService<AuthAPI> {
  static let shared = AuthService()
  private override init() {}

  func renewalToken() -> Single<Response> {
      let refreshToken = "refreshToken"
      return request(.renewalToken(refreshToken))
  }
}

// MARK: - API
enum AuthAPI {
  case renewalToken(String)
}

extension AuthAPI: BaseAPI {
  var path: String {
    let apiPath = "/api-as/v1"

    switch self {
    case .renewalToken:
      return "\(apiPath)/\("renewalToken".lowercased())"
    }
  }

  var method: Moya.Method {
    switch self {
    case .renewalToken:
      return .post
    }
  }

  var task: Task {
    switch self {
    case let .renewalToken(refreshToken):
      return .requestParameters(
        parameters: ["refreshToken": refreshToken],
        encoding: JSONEncoding.default
      )
    }
  }
}
