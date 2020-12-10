//
//  SetViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 10.12.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class SetViewController: UIViewController {

    var darkModeSwitch = UISwitch()
    var darkModeLabel = UILabel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        confDarkModeSwitch()
        // Do any additional setup after loading the view.
    }
    
    func confDarkModeSwitch() {
        
        
        darkModeLabel.text = "Темный режим"
        
        view.addSubview(darkModeSwitch)
        view.addSubview(darkModeLabel)
        
        NSLayoutConstraint.activate([
            darkModeSwitch.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 20),
            darkModeSwitch.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -20),
            
            darkModeLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 20),
            darkModeLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)
        ])
        darkModeSwitch.translatesAutoresizingMaskIntoConstraints = false
        darkModeLabel.translatesAutoresizingMaskIntoConstraints = false
        
        
    }
    



}
