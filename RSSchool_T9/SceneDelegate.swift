//
// 📰 🐸
// Project: RSSchool_T9
//
// Author: Uladzislau Volchyk
// On: 23.07.21
//
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = ( scene as? UIWindowScene ) else { return }
            window = UIWindow (windowScene: windowScene )
            let startController = MainNavigationController ()
            let navigationController = UINavigationController( rootViewController: startController )
            window?.rootViewController = navigationController
            window?.makeKeyAndVisible()
    }
}

