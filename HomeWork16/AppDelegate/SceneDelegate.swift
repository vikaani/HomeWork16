//
//  SceneDelegate.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    
    var window: UIWindow?
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        self.window = UIWindow(windowScene: windowScene)
        openMainScreen()
    }
    
    private func openMainScreen() {
        let appliactionCoordinator = ApplicationCoordinator(navigationViewController: UINavigationController())
        window?.rootViewController = appliactionCoordinator.rootViewController
        appliactionCoordinator.start()
        window?.makeKeyAndVisible()
    }
}

