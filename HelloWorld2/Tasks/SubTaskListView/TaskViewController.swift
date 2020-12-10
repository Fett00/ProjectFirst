//
//  TaskViewController.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 24.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TaskViewController: UIViewController{
    
    let textView = UITextView(frame: .zero)
    let artic = UITextField()
    let dateText = UITextField(frame: .zero)
    
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
        textView.font = UIFont(name: "Helvetica", size: UIFont.labelFontSize)
        
        NSLayoutConstraint.activate([
        textView.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        textView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10),
        textView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
        textView.topAnchor.constraint(equalTo: artic.bottomAnchor)])
        textView.translatesAutoresizingMaskIntoConstraints = false
        
        textView.text = taskView.textTask
    }
    
    func confArticleLableView(){
        view.addSubview(artic)
        
        artic.isEnabled = false

        artic.font = UIFont(name: "Helvetica-bold", size: 30)
        artic.adjustsFontSizeToFitWidth = true
        artic.isSelected = false
        
        NSLayoutConstraint.activate([
        artic.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        artic.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 14),
        artic.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
        artic.topAnchor.constraint(equalTo: dateText.bottomAnchor,constant: 5)])
        artic.translatesAutoresizingMaskIntoConstraints = false
        
        artic.text = taskView.lableTask
        
    }
    
    func confDateTextView() {
        view.addSubview(dateText)
        dateText.textAlignment = .center
        dateText.isEnabled = false
        dateText.textColor = .systemGray
        
        NSLayoutConstraint.activate([
        dateText.centerXAnchor.constraint(equalTo: view.safeAreaLayoutGuide.centerXAnchor),
        dateText.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor,constant: 10),
        dateText.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor,constant: -10),
        dateText.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 5)])
        dateText.translatesAutoresizingMaskIntoConstraints = false
        
        dateText.text = taskView.date
        
    }
    

}

