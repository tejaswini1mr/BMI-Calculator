//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by Tejaswini MR on 28/10/20.
//  Copyright © 2020 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    var bmiValue:String?
    var bmiadvice:String?
    var bmiColor:UIColor?

    @IBOutlet weak var BmiLabel: UILabel!
    
    
    @IBOutlet weak var adviceLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        BmiLabel.text=bmiValue
        adviceLabel.text=bmiadvice
        view.backgroundColor=bmiColor
        
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
