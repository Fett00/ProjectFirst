

import  UIKit


extension SceneDelegate{
    
    func createTasksListNC() -> UINavigationController {
        let tasksListVC = TasksListViewController()
        tasksListVC.title = "Tasks"
        tasksListVC.tabBarItem = UITabBarItem(title: "Tasks", image: UIImage(systemName: "list.bullet"), tag: 0)
        return UINavigationController(rootViewController: tasksListVC)
    }
    
    func createSettingsNC() -> UINavigationController {
        let settingsVC = SettingsViewController()
        settingsVC.title = "Settings"
        settingsVC.tabBarItem = UITabBarItem(title: "Settings", image: UIImage(systemName:"slider.horizontal.3"),tag:1)
        return UINavigationController(rootViewController: settingsVC)
    }
    
    func createTabBar() -> UITabBarController {
        let tabBar = UITabBarController()
        UITabBar.appearance().tintColor = .systemGreen
        tabBar.viewControllers = [createTasksListNC(),createSettingsNC()]
        return tabBar
    }

}
