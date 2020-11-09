//
//  SceneDelegatePadExtantions.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 03.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

extension SceneDelegate{
    
    func createTasksListNCd() -> UINavigationController {
        let tasksListVC = TasksListViewController()
        tasksListVC.title = "Tasks"
        tasksListVC.tabBarItem = UITabBarItem(title: "Tasks", image: UIImage(systemName: "list.bullet"), tag: 0)
        return UINavigationController(rootViewController: tasksListVC)
    }
    
    func createSettingsNCd() -> UINavigationController {
        let settingsVC = SettingsViewController()
        settingsVC.title = "Settings"
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName:"slider.horizontal.3"),tag:1)
        return UINavigationController(rootViewController: settingsVC)
    }
    
    func createSplitView() -> UISplitViewController {
        let splitView = UISplitViewController()
        UITabBar.appearance().tintColor = .systemGreen
        splitView.viewControllers = [createTasksListNC(),createSettingsNC()]
        return splitView
    }

}


