//
//  Task.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 05.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

class Task{
    
    var textTask = "EMPTY_VALUE"
    var lableTask = "EMPTY_VALUE"
    
    init() {
    }
    
    init(_ text:String?,_ lable:String = "") {
        self.textTask = text ?? "EMPTY_VALUE"
        self.lableTask = lable
    }
    
}
