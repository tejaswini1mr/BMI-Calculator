//
//  SecondViewController.swift
//  BMI Calculator
//
//  Created by Tejaswini MR on 28/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit
import Foundation
class SecondViewController: UIViewController {
    var bmiValue="0.0"
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor=UIColor.red
        
    
        let label=UILabel()
        label.text=bmiValue
        label.frame=CGRect(x: 0, y: 0, width: 100, height: 50)
        label.textColor = .green
        view.addSubview(label)
        
    }
    
    
    
}
