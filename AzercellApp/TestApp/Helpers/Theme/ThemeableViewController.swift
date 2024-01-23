//
//  ThemeableViewController.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 25/04/2023.
//

import UIKit
import TestAppUIkit

protocol ThemeableViewController {
    var theme: ThemeProvider { get }
}

extension ThemeableViewController where Self: UIViewController {
    
    func adaptiveColor(_ style: ColorStyle) -> UIColor {
        if #available(iOS 13.0, *) {
            return theme.adaptiveColor(style, isDarkMode: self.traitCollection.userInterfaceStyle == .dark, isHighContrast: self.traitCollection.accessibilityContrast == .high)
        } else {
            return theme.adaptiveColor(style, isDarkMode: self.traitCollection.userInterfaceStyle == .dark, isHighContrast: false)
        }
    }
}
