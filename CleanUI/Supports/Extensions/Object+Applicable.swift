//
//  Object+Applicable.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import Foundation

protocol Applicable {
    
}

extension Applicable {
    
    func apply(_ closure:(Self) -> ()) -> Self {
        closure(self)
        return self
    }
    
}

extension NSObject: Applicable {}

extension Decodable {
    
    func apply(_ closure:(Self) -> ()) -> Self {
        closure(self)
        return self
    }
    
}
