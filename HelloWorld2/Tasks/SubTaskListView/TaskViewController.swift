//
//  TaskViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 24.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController{
    
    let lableView = UITextView()
    var taskText = ""
    var lableText = ""
    let artic = UITextField()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        confArticleLableView()
        confLableView()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.largeTitleDisplayMode = .never
    }
    
    @objc func backWSave(){
        for i in taskListSource{
            if i.textTask == taskText{
                i.textTask = lableView.text
            }
        }
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    init(text:String,lable:String) {
        taskText = text
        lableText = lable
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func confLableView(){
        view.addSubview(lableView)

        
        lableView.textAlignment = .left
        lableView.isScrollEnabled = false
        //lableView.onAllScreen(to: lableView,trailingConst: 19.0,leadingConst: 19.0)
        //view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: lableView.topAnchor).isActive = true
        lableView.frame = CGRect(x: artic.frame.minX, y: artic.frame.maxY, width: (self.navigationController?.navigationBar.frame.width)!, height: 500)
        
        lableView.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize)
        lableView.text = taskText
        
        
    }
    
    func confArticleLableView(){
        view.addSubview(artic)
        artic.frame = CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.height)!+40, width: (self.navigationController?.navigationBar.frame.width)!, height: 80)
        artic.trailingAnchor.constraint(equalTo: artic.trailingAnchor,constant: -19).isActive = true
        artic.leadingAnchor.constraint(equalTo: artic.leadingAnchor,constant: 19).isActive = true
        
        artic.font = UIFont(name: "Helvetica-bold", size: 30)
        artic.adjustsFontSizeToFitWidth = true
        artic.isSelected = false
        artic.text = lableText
        
    }
    

}

