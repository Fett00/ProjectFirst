//
//  TaskListViewControllerExtantions.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 05.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit


extension TasksListViewController: UITableViewDelegate, UITableViewDataSource{
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return taskListSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.listOfTasks.dequeueReusableCell(withIdentifier: "TableViewCell", for: indexPath)
        cell.textLabel?.numberOfLines = 4
        cell.textLabel?.text = taskListSource[indexPath.row].textTask
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //self.navigationController?.pushViewController(, animated: true)
    }

    func confListOfTasks(){
        view.addSubview(listOfTasks)
        self.listOfTasks.register(TableViewCell.self, forCellReuseIdentifier: "TableViewCell")
        listOfTasks.delegate = self
        listOfTasks.dataSource = self
        listOfTasks.rowHeight = 100
        listOfTasks.onAllScreen(to: listOfTasks)
    }
    
    
    
    
    
}
