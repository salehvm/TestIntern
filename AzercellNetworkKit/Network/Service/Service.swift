//
//  Service.swift
//  AzercellNetworkKit
//
//  Created by Saleh Majidov on 25/04/2023.
//

import Foundation
//import Moya
//import Mapper

public protocol ServiceDelegate: AnyObject {
    
}

public protocol ServiceDataSource: AnyObject {
    
}

public protocol ServiceProtocol {
    
    var delegate: ServiceDelegate? { get set }
    var dataSource: ServiceDataSource? { get set }
    
    
    func cancelAll()
}

public class Service: ServiceProtocol {
    
    public enum Error: Swift.Error {
        case networkError
        case unauthorizedError
        case serializationError(internal: Swift.Error)
    }
    
    public weak var delegate: ServiceDelegate? {
        didSet {
        }
    }
    
    public weak var dataSource: ServiceDataSource? {
        didSet {
        }
    }
    
    
    
    public init() { }
    
    public func cancelAll() { }
}

// MARK: - BaseService Delegate and DataSource

//extension Service: BaseServiceDelegate, BaseServiceDataSource {
//
//}

