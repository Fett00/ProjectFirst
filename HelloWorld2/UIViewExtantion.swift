//
//  UIViewExtantion.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 05.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

extension UIView{
    
    func onAllScreen(to superView: UIView){
        
        translatesAutoresizingMaskIntoConstraints                                 = false
        trailingAnchor.constraint(equalTo: superview!.trailingAnchor).isActive    = true
        leadingAnchor.constraint(equalTo: superview!.leadingAnchor).isActive      = true
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive              = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive        = true
    }
    
}
