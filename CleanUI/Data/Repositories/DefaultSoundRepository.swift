//
//  DefaultSoundRepository.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import RealmSwift

class DefaultSoundRepository: SoundRepository {
    
    let mapper = SoundEntityMapper()
    
    func getAll() -> [SoundModel] {
        do {
            let realm = try Realm()
            return realm.objects(SoundEntity.self)
                .map { [mapper] in mapper.toModel($0) }
        } catch {
            return []
        }
    }
    
    func getById(_ id: Int32) -> SoundModel? {
        do {
            let realm = try Realm()
            return realm.objects(SoundEntity.self)
                .map { [mapper] in mapper.toModel($0) }
                .first { $0.soundId == id }
        } catch {
            return nil
        }
    }
    
}
