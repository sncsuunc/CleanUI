//
//  SoundRepository.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import Foundation

protocol SoundRepository {
    
    func getAll() -> [SoundModel]
    
    func getById(_ id: Int32) -> SoundModel?
    
}
