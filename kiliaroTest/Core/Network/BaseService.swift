//
//  BaseService.swift
//  Weather (iOS)
//
//  Created by behrooz azimifar on 04/10/2022.
//

import Moya
import RxSwift

class BaseService<API: TargetType> {
   
    private let provider = MoyaProvider<API>(plugins: [
        NetworkLoggerPlugin(configuration: .init(logOptions: .verbose)),
        MoyaCacheablePlugin(),
    ])

  func request(_ api: API) -> Single<Response> {
    return provider.rx.request(api)
      .flatMap {
        if $0.statusCode == 401 {
          throw TokenError.tokenExpired
        } else {
          return Single.just($0)
        }
      }
      .handleResponse()
      .filterSuccessfulStatusCodes()
      .retry(2)
  }
    
}
