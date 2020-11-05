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
        
        confTextField()
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(tap))
    }
    
    @objc func tap(){
        if let text = textField.text{
            taskListSource.append(Task(text));
        }
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    func confTextField(){
        view.addSubview(textField)
        
        textField.textAlignment = .left
        textField.isScrollEnabled = false
        
        textField.onAllScreen(to: textField)
    }
    

}

