//
//  SceneDelegate.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/9/24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    let splashVC = SplashViewController()

    func scene(
        _ scene: UIScene,
        willConnectTo session: UISceneSession,
        options connectionOptions: UIScene.ConnectionOptions
    ) {
        guard let windowScene = scene as? UIWindowScene else { return }
        window = UIWindow(windowScene: windowScene)
        window?.makeKeyAndVisible()

        let navigationController = UINavigationController()
        navigationController.view.backgroundColor = .white

        window?.rootViewController = splashVC
    }

}
