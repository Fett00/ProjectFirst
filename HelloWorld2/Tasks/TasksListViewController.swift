//
//  TaskListVCViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 24.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TasksListViewController: UIViewController{
    
    
    var listOfTasks = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        confListOfTasks()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.navigationItem.largeTitleDisplayMode = .always
        
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(tapToAdd))
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        listOfTasks.reloadData()
        self.navigationItem.largeTitleDisplayMode = .always
    }

    
    @objc func tapToAdd() {
        self.navigationController?.pushViewController(TaskListCreateTaskViewController(), animated: true)
    }
    
    

    
    
}




