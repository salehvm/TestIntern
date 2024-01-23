//
//  DashboardPresenter.swift
//  TestApp
//
//  Created by Saleh Majidov on 22/01/2024.
//

import UIKit

protocol DashboardPresentationLogic {
    
    func presentLoad(response: Dashboard.Load.Response)
}

final class DashboardPresenter: DashboardPresentationLogic {
    
    weak var viewController: DashboardDisplayLogic?
  
    
    // MARK: Presentation
  
    func presentLoad(response: Dashboard.Load.Response) {
        let viewModel = Dashboard.Load.ViewModel()
        viewController?.displayLoad(viewModel: viewModel)
    }
}
