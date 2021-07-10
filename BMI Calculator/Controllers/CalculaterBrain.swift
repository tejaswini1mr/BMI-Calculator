//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by Tejaswini MR on 28/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//
import UIKit
import Foundation
struct CaluculaterBrain{
    var bmi: BMI?
    mutating func calculateBMI(hight:Float,weight:Float){
        let bmivalue=weight/pow(hight, 2)
        if bmivalue<18.5{
            bmi=BMI(value: bmivalue, advice: "underweight", color:#colorLiteral(red: 0.4620226622, green: 0.8382837176, blue: 1, alpha: 1))
        }
        else if bmivalue<24.9{
            bmi=BMI(value: bmivalue, advice: "fit is fiddel", color: #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1))}
        else{
            bmi=BMI(value: bmivalue, advice: "eat less", color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1))
        }
    }
    /*func getBMIValue()->String{
        if let safeBmi=bmi{
            let bmitodec = (String(format: "%.2f",safeBmi))
            return bmitodec
            
        }
        else{
            return "0.0"
        }
        
     }*/
    
    func getBMIValue()->String{
        let bmitodec = (String(format: "%.2f",bmi?.value ?? 0.0))//bmi ?? 0.0
        return bmitodec
        
    }
    func getBMIColor()->UIColor{
        return bmi?.color ?? #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
    }
    func getBMIadvice()->String{
        return bmi?.advice ?? ""
    }
}
