//
//  Mapper.swift
//  Core
//
//  Created by Dimas Wicaksono on 24/01/22.
//

public protocol Mapper{
    associatedtype Response
    associatedtype Entity
    associatedtype Domain
    
    func tranformReponseToEntity(response: Response) -> Entity
    func tranformEntityToDomain(entity: Entity) -> Domain
    func tranformResponseToDomain(response: Response) -> Domain
    func tranformDomainToEntity(domain: Domain)-> Entity
}
