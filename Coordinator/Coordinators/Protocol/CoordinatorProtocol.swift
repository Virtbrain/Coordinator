//
//  CoordinatorProtocol.swift
//  Coordinator
//
//  Created by Alexey Manankov on 29.08.2023.
//
import UIKit

public protocol CoordinatorProtocol: AnyObject {
    var navigationController: UINavigationController {get set}
    
    func start()
}
