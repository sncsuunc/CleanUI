//
//  Realm+Extensions.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import RealmSwift

extension List {
    
    func toArray() -> [Element] {
        self.map { $0 }
    }
    
}
