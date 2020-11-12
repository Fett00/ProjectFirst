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
    }
    
}

