//
//  AppTheme.swift
//  AzercellUIkit
//
//  Created by Saleh Majidov on 25/04/2023.
//

import UIKit

public protocol ThemeProvider {
    
    func adaptiveColor(_ style: ColorStyle, isDarkMode: Bool, isHighContrast: Bool) -> UIColor
    
}

let bundle = Bundle(for: AppTheme.self)

public class AppTheme: ThemeProvider {
    
    public init() {}
    
    public func adaptiveColor(_ style: ColorStyle, isDarkMode: Bool, isHighContrast: Bool) -> UIColor {
        return style.load()!
    }
    
}
