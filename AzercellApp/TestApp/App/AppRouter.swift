//
//  AppRouter.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 25/04/2023.
//

import UIKit

final class AppRouter {
    
    let window: UIWindow
    
    init() {
        window = UIWindow(frame: UIScreen.main.bounds)
    }
    
    func start() {
        self.main()
    }

    func main() {
        let viewController = TabBarController()
        TabBarConfigurator.configure(viewController)
        self.window.rootViewController = viewController
        self.window.makeKeyAndVisible()
    }

}
