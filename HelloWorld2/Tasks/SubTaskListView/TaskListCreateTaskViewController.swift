//
//  TaskListCreateTaskViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 04.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TaskListCreateTaskViewController: UIViewController {
    
    let textField = UITextView(frame: .zero)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        self.navigationItem.title = "Create new task"
        self.navigationItem.largeTitleDisplayMode = .always
        
        view.addSubview(textField)
        textField.textAlignment = NSTextAlignment.center
        
        textField.textAlignment = .left
        textField.isScrollEnabled = false
        
        
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        textField.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        textField.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        textField.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
        
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(tap))
    }
    
    @objc func tap(){
        if let text = textField.text{
            taskListSource.append(text)
        }
        self.navigationController?.popToRootViewController(animated: true)
    }
    


}
/*
 <textField
 opaque="NO"
 contentMode="scaleToFill"
 fixedFrame="YES"
 contentHorizontalAlignment="left"
 contentVerticalAlignment="center"
 borderStyle="roundedRect"
 textAlignment="natural"
 minimumFontSize="17"
 translatesAutoresizingMaskIntoConstraints="NO"
 id="IOa-7D-hW8">
 <rect key="frame" x="58" y="555" width="97" height="34"/>
 <autoresizingMask key="autoresizingMask" flexibleMaxX="YES" flexibleMaxY="YES"/>
 <fontDescription key="fontDescription" type="system" pointSize="14"/>
 <textInputTraits key="textInputTraits"/>
 </textField>
 */
