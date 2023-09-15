//
//  AppDelegate.swift
//  OrangeHACKATHON
//
//  Created by bakebrlk on 13.09.2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        window = UIWindow()
        window?.makeKeyAndVisible()
        window?.rootViewController = UINavigationController(rootViewController: SignUp())
        // Override point for customization after application launch.
        return true
    }


}

