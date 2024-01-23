//
//  AppDelegate.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 25/04/2023.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window:UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        App.router.start()
        
        return true
    }
}

