//
//  AppContainer.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 25/04/2023.
//

import Foundation
import TestAppUIkit
import TestAppNetworkKit

let App = AppContainer()

final class AppContainer {
    
    let router = AppRouter()
    
    let service = Service()

    let theme = AppTheme()
}
