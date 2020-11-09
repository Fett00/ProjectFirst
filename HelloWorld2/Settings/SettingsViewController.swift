//
//  SettingsViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 24.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    var settingsList = UITableView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        confSettingsList()
        view.backgroundColor = .white
        
    }
    
    func confSettingsList(){
        view.addSubview(settingsList)
        
        settingsList.delegate = self
        settingsList.dataSource = self
        settingsList.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
        settingsList.rowHeight = 100
        settingsList.onAllScreen(to: settingsList)
        settingsList.tableFooterView = UIView()
        
       
        
    }
    

}

extension SettingsViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return settingsListArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = settingsList.dequeueReusableCell(withIdentifier: "SettingsCell", for: indexPath)
        
        cell.textLabel?.text = settingsListArray[indexPath.row]
        
        return cell
    }
    
    
}

