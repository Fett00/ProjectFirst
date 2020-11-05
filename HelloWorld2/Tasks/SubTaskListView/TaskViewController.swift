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
    
    init(text:String) {
        taskText = text
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func conflableView(){
        view.addSubview(lableView)
        
        
        
        //lableView.onAllScreen(to: lableView)
        lableView.translatesAutoresizingMaskIntoConstraints                                 = false
        lableView.trailingAnchor.constraint(equalTo: lableView.trailingAnchor).isActive    = true
        lableView.leadingAnchor.constraint(equalTo: lableView.leadingAnchor).isActive      = true
        lableView.topAnchor.constraint(equalTo: lableView.topAnchor).isActive              = true
        lableView.bottomAnchor.constraint(equalTo: lableView.bottomAnchor).isActive        = true
        //lableView.textAlignment = .left
        lableView.font = UIFont(name: lableView.font.fontName, size: 25)
        lableView.sizeToFit()
        lableView.backgroundColor = .orange
        lableView.text = taskText
    }
    

}

