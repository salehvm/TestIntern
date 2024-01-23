//
//  Colors.swift
//  AzercellUIkit
//
//  Created by Saleh Majidov on 25/04/2023.
//

import UIKit

public enum ColorStyle: String, CaseIterable {
    
    // MARK: - Black
    
    case main = "Main"
    case black = "Black"
    case secondColor = "SecondColor"
}

extension ColorStyle {
    
    func load() -> UIColor? {
        if #available(iOS 13.0, *) {
            return UIColor(named: self.rawValue, in: bundle, compatibleWith: .current)
        } else {
            return UIColor(named: self.rawValue, in: bundle, compatibleWith: nil)
        }
    }
}
