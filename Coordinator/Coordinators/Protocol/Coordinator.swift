//
//  Coordinator.swift
//  Coordinator
//
//  Created by Alexey Manankov on 29.08.2023.
//

import UIKit

class MainCoordinator: CoordinatorProtocol {
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let vc = MainViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: false)
    }
    
    func openSecondViewController() {
        let vc = SecondViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
    
    func openThirdViewController() {
        let vc = ThirdViewController()
        vc.coordinator = self
        navigationController.pushViewController(vc, animated: true)
    }
}
