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
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    func confSettingsList(){
        view.addSubview(settingsList)
        
        settingsList.delegate = self
        settingsList.dataSource = self
        settingsList.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
    
        
        settingsList.translatesAutoresizingMaskIntoConstraints = false
        settingsList.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        settingsList.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        settingsList.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        settingsList.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        
       
        
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

