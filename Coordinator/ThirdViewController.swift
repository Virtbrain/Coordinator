//
//  ThirdViewController.swift
//  Coordinator
//
//  Created by Alexey Manankov on 29.08.2023.
//

import UIKit

class ThirdViewController: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    let gotoMainVCButton = UIButton()
    let gotoSecondVCButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Third View Controller"
        viewSetup()
    }
    
    private func viewSetup() {
        [gotoMainVCButton, gotoSecondVCButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = .orange
            $0.setTitleColor(.black, for: .normal)
            $0.setTitleColor(UIColor(white: 1, alpha: 0.3), for: .highlighted)
            $0.layer.cornerRadius = 10
        }
        
        gotoMainVCButton.setTitle("Go to Main View", for: .normal)
        gotoMainVCButton.addTarget(self, action: #selector(openSecondVC), for: .touchUpInside)
        gotoSecondVCButton.setTitle("Go to Second View", for: .normal)
        gotoSecondVCButton.addTarget(self, action: #selector(openThirdVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            gotoMainVCButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            gotoMainVCButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            gotoMainVCButton.widthAnchor.constraint(equalToConstant: 350),
            gotoMainVCButton.heightAnchor.constraint(equalToConstant: 50),
            
            gotoSecondVCButton.topAnchor.constraint(equalTo: gotoMainVCButton.bottomAnchor, constant: 50),
            gotoSecondVCButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            gotoSecondVCButton.widthAnchor.constraint(equalToConstant: 350),
            gotoSecondVCButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func openSecondVC() {
        coordinator?.start()
    }
    
    @objc private func openThirdVC() {
        coordinator?.openThirdViewController()
    }
}
