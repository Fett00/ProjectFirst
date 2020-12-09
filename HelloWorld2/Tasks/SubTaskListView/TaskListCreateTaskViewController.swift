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
        
        
        NSLayoutConstraint.activate([
                                        textField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
                                        textField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10),
                                        textField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
                                        textField.topAnchor.constraint(equalTo: articleField.bottomAnchor,constant: 10)])
        textField.translatesAutoresizingMaskIntoConstraints = false

    }
    
    func confArticleField(){
        view.addSubview(articleField)
        
        articleField.font = UIFont(name: "Helvetica-bold", size: 30)
        articleField.adjustsFontSizeToFitWidth = true
        articleField.placeholder = "Article"
        articleField.becomeFirstResponder()
        
        NSLayoutConstraint.activate([
        articleField.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        articleField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10),
        articleField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
        articleField.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 10)])
        articleField.translatesAutoresizingMaskIntoConstraints = false

        
    }
    

}

