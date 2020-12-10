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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.largeTitleDisplayMode = .always
    }
    
    
    func confSettingsList(){
        view.addSubview(settingsList)
        
        settingsList.delegate = self
        settingsList.dataSource = self
        settingsList.register(UITableViewCell.self, forCellReuseIdentifier: "SettingsCell")
        settingsList.rowHeight = 50
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
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            self.navigationController?.pushViewController(SetViewController(), animated: true)
        case 1:
            self.navigationController?.pushViewController(AboutViewController(), animated: true)
        default: break
            
        }
        
    }
    
}

