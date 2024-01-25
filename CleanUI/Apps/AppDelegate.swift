//
//  AppDelegate.swift
//  CleanUI
//
//  Created by SUU on 18/01/2024.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        initializeDependencies()
        initializeWindow()
        return true
    }

}

extension AppDelegate {
    
    private func initializeDependencies() {
        AppContainer.shared[SoundUseCase.self] = SoundUseCase(repository: DefaultSoundRepository())
    }
    
    private func initializeWindow() {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = AppRouter.shared.rootViewController
        window?.makeKeyAndVisible()
    }
    
}
