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
    var date = "1.01.2000 00:00"
    
    init() {
    }
    
    init(_ text:String?,_ lable:String = "") {
        self.textTask = text ?? "EMPTY_VALUE"
        self.lableTask = lable
        self.date = getCurrentDate()
    }
    
    func getCurrentDate() -> String{
        let dated = Calendar.current.dateComponents([.year,.month,.day, .hour, .minute], from: Date())
        return (String(dated.year!)+"."+String(dated.month!)+"."+String(dated.day!)+" "+String(dated.hour!)+":"+(String(dated.minute!).count == 1 ? "0" + String(dated.minute!) : String(dated.minute!)))
    }
    
}
