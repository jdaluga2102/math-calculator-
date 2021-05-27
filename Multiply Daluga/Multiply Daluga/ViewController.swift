//
//  ViewController.swift
//  Multiply Daluga
//
//  Created by user170714 on 11/1/20.
//  Copyright © 2020 Jacob D. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var slider2: UISlider!
    
    @IBOutlet weak var slider1: UISlider!
    
    @IBOutlet weak var number1: UITextField!
    
    @IBOutlet weak var number2: UITextField!
    
    @IBOutlet weak var donkeyImageView: UIImageView!
    
    @IBOutlet weak var label: UILabel!
   
    @IBOutlet weak var segmentMath: UISegmentedControl!
    
@IBOutlet weak var clearButtonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
       
        }
  
    @IBAction func buttonCalculate(_ sender: Any) {
        let oneButton = Int(number1.text!)!
        let twoButton = Int(number2.text!)!
        label.text = String(oneButton * twoButton)
        number2.resignFirstResponder()
        number1.resignFirstResponder()
      
        if label.text == "64" {
             donkeyImageView.image = UIImage(named: "donkey kong")
          }
        else {
            donkeyImageView.image = UIImage(named: "")
        }
        if Int(label.text!)! % 2 == 0 {
            donkeyImageView.image = UIImage(named: "Troopa")
        }
        else {
            donkeyImageView.image = UIImage(named: "Peach")
        }
    }
    
            
        
    @IBAction func clearButtonAction(_ sender: UIButton) {
        label.text = ""
        donkeyImageView.image = UIImage(named: "")
        number1.text = ""
        number2.text = ""
    }
   
    @IBAction func controlMath(_ sender: UISegmentedControl) {
        let oneButton = Int(number1.text!)!
        let twoButton = Int(number2.text!)!
        switch segmentMath.selectedSegmentIndex {
            case 0:
            label.text = String(oneButton * twoButton)
        case 1: label.text = String(oneButton / twoButton) + "." + String(oneButton % twoButton)
        case 2:label.text = String(oneButton + twoButton)
        case 3:label.text = String(oneButton - twoButton)
        default:
            break
            
        }
        
    }
    
    @IBAction func whenSliderOneMoved(_ sender: UISlider) {
        let value = Int(slider1.value)
        number1.text = String(slider1.value)
    }
    
    @IBAction func wenSlider2Moved(_ sender: UISlider) {
        let value = Int(slider2.value)
        number2.text = String(slider2.value)
    }
}
