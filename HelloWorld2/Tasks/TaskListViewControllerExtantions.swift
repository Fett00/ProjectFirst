//
//  TaskListViewControllerExtantions.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 05.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit


extension TasksListViewController: UITableViewDelegate, UITableViewDataSource{
    
    // Cells for Table View
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskListSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.listOfTasks.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath) as! TasksListTableViewCell
        cell.cellArticleLable.text = taskListSource[indexPath.row].lableTask
        cell.cellTextLable.text = taskListSource[indexPath.row].textTask
        cell.cellDateLable.text = taskListSource[indexPath.row].date
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        self.navigationController?.pushViewController(TaskViewController(taskListSource[indexPath.row]), animated: true)
    }

    
    
    //CONFIGURATE TABLE VIEW
    
    func confListOfTasks(){
        view.addSubview(listOfTasks)
        self.listOfTasks.register(TasksListTableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        listOfTasks.delegate = self
        listOfTasks.dataSource = self
        listOfTasks.rowHeight = 100
        listOfTasks.onAllScreen(to: listOfTasks)
        listOfTasks.tableFooterView = UIView()
    }
    
    
    
    
    
}
