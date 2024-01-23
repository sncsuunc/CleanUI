//
//  SoundEntityMapper.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import Foundation

struct SoundEntityMapper: EntityMapper {
    
    typealias Model = SoundModel
    
    typealias Entity = SoundEntity
    
    func toModel(_ entity: SoundEntity) -> SoundModel {
        return SoundModel().apply {
            $0.soundId = entity.soundId
            $0.name = entity.name
            $0.icon = entity.icon
            $0.sound = entity.sound
            $0.isReward = entity.isReward
            $0.isPremium = entity.isPremium
            $0.isFavorite = entity.isFavorite
            $0.isFavorite = entity.isRemote
        }
    }
    
    func toEntity(_ model: SoundModel) -> SoundEntity {
        return SoundEntity().apply {
            $0.soundId = model.soundId
            $0.name = model.name
            $0.icon = model.icon
            $0.sound = model.sound
            $0.isReward = model.isReward
            $0.isPremium = model.isPremium
            $0.isFavorite = model.isFavorite
            $0.isFavorite = model.isRemote
        }
    }
    
}
