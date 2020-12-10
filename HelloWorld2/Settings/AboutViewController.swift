//
//  AboutViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 10.12.2020.
//  Copyright © 2020 sdk. All rights reserved.
//
var aboutText = "Thanks for support us!\nYour help make us better.\n For donate us check up our website on page \"Support\"\n google.com"



import UIKit

class AboutViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        let aboutLabel = UILabel()
        aboutLabel.text = aboutText
        aboutLabel.textAlignment = .center
        
        aboutLabel.numberOfLines = 10
        
        view.addSubview(aboutLabel)
        
        NSLayoutConstraint.activate([
            aboutLabel.centerYAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerYAnchor, constant: -30),
            aboutLabel.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
            aboutLabel.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -20),
            aboutLabel.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 20)

        ])
        aboutLabel.translatesAutoresizingMaskIntoConstraints = false
    }
    


}
