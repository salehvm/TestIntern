//
//  TabBarRouter.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 26/04/2023.
//

import UIKit

@objc protocol TabBarRoutingLogic {
    //func routeToSomewhere(segue: UIStoryboardSegue?)
}

protocol TabBarDataPassing {
    var dataStore: TabBarDataStore? { get }
}

final class TabBarRouter: NSObject, TabBarRoutingLogic, TabBarDataPassing {
    
    weak var viewController: TabBarController?
    var dataStore: TabBarDataStore?
  
    // MARK: Routing

//    func routeToSomewhere(segue: UIStoryboardSegue?) {
    
//    }

    // MARK: Navigation

//    func navigateToSomewhere(source: TabBarViewController, destination: SomewhereViewController) {
//        source.show(destination, sender: nil)
//    }

    // MARK: Passing data

//    func passDataToSomewhere(source: TabBarDataStore, destination: inout SomewhereDataStore) {
//        destination.name = source.name
//    }
}
