//
//  SceneDelegate.swift
//  ShortcutSupportApp
//
//  Created by JW_Macbook on 2020/03/17.
//  Copyright © 2020 JW_Macbook. All rights reserved.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?


    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
        guard let _ = (scene as? UIWindowScene) else { return }
    }
    
    // SceneDelegate 기반일때
    func scene(_ scene: UIScene, willContinueUserActivityWithType userActivityType: String) {
        // check
        if "ShortcutSupportFirstIntent" == userActivityType {
            NotificationCenter.default.post(name: .alertShow, object: nil)
        }
    }

}

