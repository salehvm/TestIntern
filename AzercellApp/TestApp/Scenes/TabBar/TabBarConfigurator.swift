//
//  TabBarConfigurator.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 26/04/2023.
//

import UIKit

final class TabBarConfigurator {
    
    @discardableResult
    static func configure(_ viewController: TabBarController) -> TabBarController {
        let interactor = TabBarInteractor()
        let presenter = TabBarPresenter()
        let router = TabBarRouter()
        
        viewController.interactor = interactor
        viewController.router = router
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.viewController = viewController
        router.dataStore = interactor
        
        return viewController
    }
}
