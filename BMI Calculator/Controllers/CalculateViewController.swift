//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class CalculateViewController: UIViewController {
    var calculatorBrain=CaluculaterBrain()
    
    @IBOutlet weak var hightsl: UISlider!
    @IBOutlet weak var wightsl: UISlider!
    @IBOutlet weak var hightlabel: UILabel!
    @IBOutlet weak var weightlabel: UILabel!
    @IBAction func hightSlider(_ sender: UISlider) {
        hightlabel.text="\(String(format: "%.2f",sender.value))m"
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightlabel.text="\(Int(sender.value))Kg"
    }
    
    
    @IBAction func CalculatePressed(_ sender: UIButton) {
        
        let hight=hightsl.value
        let weight=wightsl.value
        calculatorBrain.calculateBMI(hight: hight, weight: weight)
        self.performSegue(withIdentifier: "goToResults", sender: self)
        
        //current view will present secondview
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier=="goToResults"{
            let destination=segue.destination as! ResultViewController//if we dont use as it will take destnation in class UIcontroll
            destination.bmiValue=calculatorBrain.getBMIValue()
            destination.bmiadvice = calculatorBrain.getBMIadvice()
            destination.bmiColor = calculatorBrain.getBMIColor()
        }//this to prefom and transefer some values to next view
    }
    
    
    


}

