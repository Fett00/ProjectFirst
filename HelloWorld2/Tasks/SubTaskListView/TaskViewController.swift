//
//  TaskViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 24.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController{
    
    let textView = UITextView()
    let artic = UITextField()
    let dateText = UITextField()
    
    var taskView:Task
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationItem.largeTitleDisplayMode = .never
        
        view.backgroundColor = .white
        
        confDateTextView()
        confArticleLableView()
        confTextView()
    }
    
    init(_ task:Task) {
        
        taskView = task
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func confTextView(){
        view.addSubview(textView)

        
        textView.textAlignment = .left
        textView.isScrollEnabled = false
        textView.isSelectable = false
        //lableView.onAllScreen(to: lableView,trailingConst: 19.0,leadingConst: 19.0)
        //view.safeAreaLayoutGuide.topAnchor.constraint(equalTo: lableView.topAnchor).isActive = true
        textView.frame = CGRect(x: artic.frame.minX, y: artic.frame.maxY, width: (self.navigationController?.navigationBar.frame.width)!, height: 500)
        
        textView.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize)
        textView.text = taskView.textTask
        
    }
    
    func confArticleLableView(){
        view.addSubview(artic)
        
        artic.isEnabled = false
        artic.frame = CGRect(x: dateText.frame.minX, y: dateText.frame.maxY, width: (self.navigationController?.navigationBar.frame.width)!, height: dateText.font!.lineHeight + 5)

        artic.font = UIFont(name: "Helvetica-bold", size: 30)
        artic.adjustsFontSizeToFitWidth = true
        artic.isSelected = false
        artic.text = taskView.lableTask
        //artic.backgroundColor = .blue
        
    }
    
    func confDateTextView() {
        view.addSubview(dateText)
        dateText.textAlignment = .center
        dateText.isEnabled = false
        dateText.frame = CGRect(x: 0, y: (self.navigationController?.navigationBar.frame.height)!+45, width: (self.navigationController?.navigationBar.frame.width)!, height: dateText.font!.lineHeight+15)
        //dateText.font = UIFont(name: "Helvetica")
        dateText.textColor = .systemGray
        //dateText.backgroundColor = .cyan
        dateText.text = taskView.date
    }
    

}

