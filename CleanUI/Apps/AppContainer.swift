//
//  AppContainer.swift
//  CleanUI
//
//  Created by SUU on 23/01/2024.
//

import Foundation

protocol AppContainerProcol {
    
    func register<Component>(type: Component.Type, component: Any)
    func resolve<Component>(type: Component.Type) -> Component?
    
}

final class AppContainer: AppContainerProcol {
    
    static let shared: AppContainerProcol = AppContainer()
    
    private init() {}
    
    
    private var components: [String: Any] = [:]
    
    func register<Component>(type: Component.Type, component: Any) {
        components["\(type)"] = component
    }
    
    func resolve<Component>(type: Component.Type) -> Component? {
        return components["\(type)"] as? Component
    }
    
}
