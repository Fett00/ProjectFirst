//
//  TaskViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 24.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController{
    
    let lableView = UILabel(frame: .zero)
    var taskText = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        conflableView()
    }
    
    func conflableView(){
        view.addSubview(lableView)
        
        lableView.textAlignment = .left
        
        lableView.onAllScreen(to: lableView)
    }
    

}
