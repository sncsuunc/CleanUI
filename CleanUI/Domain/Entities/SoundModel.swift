//
//  SoundModel.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import Foundation
import SwiftyJSON

class SoundModel: Codable {
    
    var soundId: Int32? = 0
    var name: String? = ""
    var icon: String? = ""
    var sound: String? = ""
    var isReward: Bool = false
    var isPremium: Bool = false
    var isFavorite: Bool = false
    var isRemote: Bool = true
    
    convenience init(value: JSON) {
        self.init()
        for (key, value) in value {
            switch key {
            case "id":
                self.soundId = value.int32
            case "name":
                self.name = value.string
            case "icon":
                self.icon = value.string
            case "sound":
                self.sound = value.string
            case "is_reward":
                self.isReward = value.boolValue
            case "is_premium":
                self.isPremium = value.boolValue
            case "is_remote":
                self.isRemote = value.boolValue
            default:
                break
            }
        }
    }
}
