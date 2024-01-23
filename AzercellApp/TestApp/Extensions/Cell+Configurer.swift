//
//  Cell+Configurer.swift
//  AzercellApp
//
//  Created by Saleh Majidov on 26/04/2023.
//


import UIKit

public protocol CellConfigurer: AnyObject {
    static var reuseIdentifier: String {get}
}

public extension CellConfigurer {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionViewCell: CellConfigurer { }
