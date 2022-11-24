//
//  handleResponse.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Foundation
import Moya
import RxSwift

extension PrimitiveSequence where Trait == SingleTrait, Element == Response {
  func handleResponse() -> Single<Element> {
    return flatMap { response in
                    
      if (200 ... 299) ~= response.statusCode {
        return Single.just(response)
      }

      if var error = try? response.map(ResponseError.self) {
        error.statusCode = response.statusCode
        return Single.error(error)
      }

      // Its an error and can't decode error details from server, push generic message
      let genericError = ResponseError(statusCode: response.statusCode,
                                       message: "empty message",
                                       documentation_url: "")
      return Single.error(genericError)
    }
  }
}

enum TokenError: Swift.Error {
  case tokenExpired
}
