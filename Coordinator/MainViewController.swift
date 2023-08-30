//
//  ViewController.swift
//  Coordinator
//
//  Created by Alexey Manankov on 29.08.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    let gotoFirstVCButton = UIButton()
    let gotoSecondVCButton = UIButton()
    weak var coordinator: MainCoordinator?

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "Main View Controller"
        // Do any additional setup after loading the view.
        viewSetup()
    }
    
    private func viewSetup() {
        [gotoFirstVCButton, gotoSecondVCButton].forEach {
            view.addSubview($0)
            $0.translatesAutoresizingMaskIntoConstraints = false
            $0.backgroundColor = .orange
            $0.setTitleColor(.black, for: .normal)
            $0.setTitleColor(UIColor(white: 1, alpha: 0.3), for: .highlighted)
            $0.layer.cornerRadius = 10
        }
        
        gotoFirstVCButton.setTitle("Go to First View", for: .normal)
        gotoFirstVCButton.addTarget(self, action: #selector(openSecondVC), for: .touchUpInside)
        gotoSecondVCButton.setTitle("Go to Second View", for: .normal)
        gotoSecondVCButton.addTarget(self, action: #selector(openThirdVC), for: .touchUpInside)
        
        NSLayoutConstraint.activate([
            gotoFirstVCButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
            gotoFirstVCButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            gotoFirstVCButton.widthAnchor.constraint(equalToConstant: 350),
            gotoFirstVCButton.heightAnchor.constraint(equalToConstant: 50),
            
            gotoSecondVCButton.topAnchor.constraint(equalTo: gotoFirstVCButton.bottomAnchor, constant: 50),
            gotoSecondVCButton.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            gotoSecondVCButton.widthAnchor.constraint(equalToConstant: 350),
            gotoSecondVCButton.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func openSecondVC() {
        coordinator?.openSecondViewController()
    }
    
    @objc private func openThirdVC() {
        coordinator?.openThirdViewController()
    }
}

