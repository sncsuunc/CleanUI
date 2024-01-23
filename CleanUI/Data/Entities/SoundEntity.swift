//
//  SoundEntity.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import RealmSwift

@objc(SoundEntity)
class SoundEntity: Object {
    
    @Persisted(primaryKey: true) var soundId: Int32? = 0
    @Persisted var name: String? = ""
    @Persisted var icon: String? = ""
    @Persisted var sound: String? = ""
    @Persisted var isReward: Bool = false
    @Persisted var isPremium: Bool = false
    @Persisted var isFavorite: Bool = false
    @Persisted var isRemote: Bool = true
    
}
