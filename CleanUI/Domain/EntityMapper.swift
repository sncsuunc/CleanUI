//
//  EntityMapper.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import Foundation

protocol EntityMapper {
    
    associatedtype Model
    associatedtype Entity
    
    func toModel(_ entity: Entity) -> Model
    
    func toEntity(_ model: Model) -> Entity
    
}
