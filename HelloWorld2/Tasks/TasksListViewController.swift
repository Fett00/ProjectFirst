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
        self.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Add", style: .plain, target: self, action: #selector(addTapped))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        listOfTasks.reloadData()
    }
    
    @objc func addTapped() {
        self.navigationController?.pushViewController(TaskListCreateTaskViewController(), animated: true)
    }
    
    

    
    
}




