//
//  TaskListCreateTaskViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 04.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TaskListCreateTaskViewController: UIViewController {
    
    let textField = UITextView()
    let articleField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.largeTitleDisplayMode = .never
        
        view.backgroundColor = .white
        self.navigationItem.title = "Create new task"
        
        confArticleField()
        confTextField()

        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(systemName: "plus"), style: .plain, target: self, action: #selector(tapOnAdded))
    }
    
    @objc func tapOnAdded(){
        if let text = textField.text{
            if let article = articleField.text{
                taskListSource.append(Task(text, article))
            }
        }
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    func confTextField(){
        view.addSubview(textField)
        
        textField.textAlignment = .left
        textField.isScrollEnabled = false
        textField.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize)
        //textField.onAllScreen(to: textField,trailingConst: 19.0,leadingConst: 19.0)
        textField.frame = CGRect(x: articleField.frame.minX, y: articleField.frame.maxY, width: (self.navigationController?.navigationBar.frame.width)!, height: 500)
    }
    
    func confArticleField(){
        view.addSubview(articleField)
        articleField.frame = CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.height)!+35, width: (self.navigationController?.navigationBar.frame.width)!, height: 80)
        articleField.trailingAnchor.constraint(equalTo: articleField.trailingAnchor,constant: -19).isActive = true
        articleField.leadingAnchor.constraint(equalTo: articleField.leadingAnchor,constant: 19).isActive = true
        
        articleField.font = UIFont(name: "Helvetica-bold", size: 30)
        articleField.adjustsFontSizeToFitWidth = true
        articleField.placeholder = "Article"

        
    }
    

}

