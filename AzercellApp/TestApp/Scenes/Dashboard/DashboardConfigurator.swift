//
//  DashboardConfigurator.swift
//  TestApp
//
//  Created by Saleh Majidov on 22/01/2024.
//

import UIKit

final class DashboardConfigurator {
    
    @discardableResult
    static func configure(_ viewController: DashboardViewController) -> DashboardViewController {
        let view = DashboardView()
        let interactor = DashboardInteractor()
        let presenter = DashboardPresenter()
        let router = DashboardRouter()
        
        viewController.mainView = view
        viewController.interactor = interactor
        viewController.router = router
        
        interactor.presenter = presenter
        
        presenter.viewController = viewController
        
        router.viewController = viewController
        router.dataStore = interactor
        
        return viewController
    }
}
