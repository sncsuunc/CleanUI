//
//  AppRouter.swift
//  CleanUI
//
//  Created by SUU on 21/01/2024.
//

import SSKit

class AppRouter: SSKitRouter {
    
    static var shared = AppRouter()
    
    required init(with route: SSRoute) {
        super.init(with: route)
    }
    
    private init() {
        super.init(with: SplashRoute.screen(SplashViewModel()))
    }
    
}
