//
//  BaseApi.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Foundation
import Moya

protocol BaseAPI: TargetType {}

extension BaseAPI {
    var baseURL: URL { URL(string: Constants.baseUrl)! }
  
  var method: Moya.Method { .get }

  var sampleData: Data { Data() }

  var task: Task { .requestPlain }

  var headers: [String: String]? { nil }
}
