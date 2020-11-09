//
//  UIViewExtantion.swift
//  HelloWorld2
//
//  Created by Садык Мусаев on 05.11.2020.
//  Copyright © 2020 sdk. All rights reserved.
//

import UIKit

extension UIView{
    /*
    func onAllScreen(to superView: UIView){
        
        translatesAutoresizingMaskIntoConstraints                                 = false
        leadingAnchor.constraint(equalTo: superview!.leadingAnchor).isActive      = true
        trailingAnchor.constraint(equalTo: superview!.trailingAnchor).isActive    = true
        topAnchor.constraint(equalTo: superview!.topAnchor).isActive              = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor).isActive        = true
    }
 */
    func onAllScreen(to superView:UIView,trailingConst left:Float=0.0,leadingConst right:Float=0.0,topConst top:Float=0.0,buttomConst buttom:Float=0.0) {
        
        translatesAutoresizingMaskIntoConstraints                                 = false
        leadingAnchor.constraint(equalTo: superview!.leadingAnchor,constant: CGFloat(right)).isActive      = true
        trailingAnchor.constraint(equalTo: superview!.trailingAnchor, constant: CGFloat(-left)).isActive    = true
        topAnchor.constraint(equalTo: superview!.topAnchor, constant: CGFloat(top)).isActive              = true
        bottomAnchor.constraint(equalTo: superview!.bottomAnchor, constant: CGFloat(-buttom)).isActive        = true
    }
    
}
