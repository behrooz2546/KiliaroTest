//
//  Resolver.swift
//  kiliaroTest
//
//  Created by behrooz azimifar on 24/11/2022.
//

import Foundation
import Swinject

func buildContainer() -> Container {
    let container = Container()
    
    container.register(GalleryDataSource.self) { _  in
        return GalleryDataSource()
    }.inObjectScope(.container)
    
    container.register(GalleryRepository.self) { r  in
        return GalleryRepositoryImpl(dataSource: r.resolve(GalleryDataSource.self)!)
    }.inObjectScope(.container)
    
    return container
}

class Resolver {
    static let shared = Resolver()
    
    //get the IOC container
    private var container = buildContainer()
    
    func resolve<T>(_ type: T.Type) -> T {
        container.resolve(T.self)!
    }
}
