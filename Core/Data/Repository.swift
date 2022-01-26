//
//  Repository.swift
//  Core
//
//  Created by Dimas Wicaksono on 24/01/22.
//

import Combine

public protocol Repository {
    associatedtype Request
    associatedtype Response
    
    func execute(request: Request?) -> AnyPublisher<Response, Error>
}
