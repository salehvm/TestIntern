//
//  TabBarInteractor.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 26/04/2023.
//

import UIKit

protocol TabBarBusinessLogic {
    func doSomething(request: TabBar.Something.Request)
}

protocol TabBarDataStore {
    //var name: String { get set }
}

final class TabBarInteractor: TabBarBusinessLogic, TabBarDataStore {
    
    var presenter: TabBarPresentationLogic?
    var worker: TabBarWorker?
    //var name: String = ""
  
    // MARK: Do something
  
    func doSomething(request: TabBar.Something.Request) {
        worker = TabBarWorker()
        worker?.doSomeWork()

        let response = TabBar.Something.Response()
        presenter?.presentSomething(response: response)
    }
}
