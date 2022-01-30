//
//  SceneDelegate.swift
//  TestTask
//
//  Created by macbook on 30.01.22.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = scene as? UIWindowScene else { return }
        let window = UIWindow(frame: scene.coordinateSpace.bounds)
        window.windowScene = scene


        window.rootViewController = UINavigationController(rootViewController: ViewController())

        self.window = window
        window.makeKeyAndVisible()
    }

}

