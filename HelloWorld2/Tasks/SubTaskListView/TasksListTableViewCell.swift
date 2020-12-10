//
//  TasksListCellTableViewCell.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 25.10.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class TasksListTableViewCell: UITableViewCell {

    var cellArticleLable = UILabel()
    var cellTextLable = UILabel()
    var cellDateLable = UILabel()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        confCellLable()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func confCellLable() {
        self.addSubview(cellTextLable)
        self.addSubview(cellArticleLable)
        self.addSubview(cellDateLable)
        
        cellArticleLable.font = UIFont(name: "Helvetica-bold", size: 30)
        cellDateLable.textColor = .systemGray
        
        NSLayoutConstraint.activate([
            cellArticleLable.topAnchor.constraint(equalTo: self.topAnchor,constant: 10),
            cellArticleLable.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            cellArticleLable.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),
            
            cellTextLable.topAnchor.constraint(equalTo: cellArticleLable.bottomAnchor),
            cellTextLable.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            cellTextLable.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10),

            
            cellDateLable.topAnchor.constraint(equalTo: cellTextLable.bottomAnchor),
            cellDateLable.leadingAnchor.constraint(equalTo: self.leadingAnchor,constant: 10),
            cellDateLable.trailingAnchor.constraint(equalTo: self.trailingAnchor,constant: -10)
        ])
        
        cellTextLable.translatesAutoresizingMaskIntoConstraints = false
        cellArticleLable.translatesAutoresizingMaskIntoConstraints = false
        cellDateLable.translatesAutoresizingMaskIntoConstraints = false
    }
    
}

