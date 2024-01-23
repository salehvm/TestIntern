//
//  TabBarPresenter.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 26/04/2023.
//

import UIKit

protocol TabBarPresentationLogic {
    func presentSomething(response: TabBar.Something.Response)
}

final class TabBarPresenter: TabBarPresentationLogic {
    
    weak var viewController: TabBarDisplayLogic?
  
    // MARK: Do something
  
    func presentSomething(response: TabBar.Something.Response) {
        let viewModel = TabBar.Something.ViewModel()
//        viewController?.displaySomething(viewModel: viewModel)
    }
}
