//
//  GalleryDataSource.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//


import Foundation
import Moya
import RxSwift

final class GalleryDataSource: BaseService<GalleryApi> {
    
    func getImages(width: Int, height: Int, resizableMode: ResizableMode) -> Single<Response> {
        return request(.getImages(width: width, height: height, resizableMode: resizableMode))
    }
}

enum GalleryApi {
    case getImages(width: Int, height: Int, resizableMode: ResizableMode)
}

extension GalleryApi: BaseAPI, AccessTokenAuthorizable {
    var baseURL: URL {
        guard let url = URL(string: "\(Constants.baseUrl)/shared") else { fatalError() }
        return url
    }
    
    var path: String {
        switch self {
        case .getImages:
            return "/\(Constants.key)/media"
        }
    }
    
    var method: Moya.Method {
        return .get
    }
    
    var task: Task {
        switch self {
        case let .getImages(width, height, resizableMode):
            return .requestParameters(parameters: ["w": width, "h": height, "m": resizableMode], encoding: URLEncoding.queryString)
        }
    }
    
    var authorizationType: AuthorizationType? {
        return .bearer
    }
    
    var headers: [String : String]? {
        return nil
    }
}


enum ResizableMode {
    case bb
    case crop
    case md
}
