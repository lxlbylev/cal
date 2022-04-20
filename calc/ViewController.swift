//
//  ViewController.swift
//  calc
//
//  Created by Гость on 15.04.2022.
//

import UIKit

class ViewController: UIViewController {
    
     @IBOutlet weak var clear: UIButton!
    
     @IBOutlet weak var rez: UIButton!
     @IBOutlet weak var n0: UIButton!
    
     @IBOutlet weak var yolo: UIStackView!
     
     @IBOutlet weak var label: UILabel!
    
     @IBOutlet weak var dd: UIStepper!
    
     @IBOutlet weak var fontSize: UIStepper!
     var numOne = ""
     var numTwo = ""
     var oper = ""
    
     override func viewDidLoad() {
        super.viewDidLoad()
          yolo.layer.cornerRadius = 36
    }

     @IBAction func numButtons(_ sender: UIButton) {
          if oper.isEmpty {
               numOne = numOne + (sender.titleLabel?.text)!
               label.text = numOne
          }
          else {
               numTwo = numTwo + (sender.titleLabel?.text)!
               label.text = numTwo
          }
     }
     
     @IBAction func opers(_ sender: UIButton) {
          oper = sender.titleLabel?.text as! String
     }
     
     
     @IBAction func clearBut(_ sender: UIButton) {
          numOne = ""
          numTwo = ""
          oper = ""
          label.text = "0"
     }
     
     @IBAction func showRez(_ sender: UIButton) {
          var rez = 0.0
 
          switch oper {
          case "+":
               rez = Double (numOne)! + Double (numTwo)!
          case "-":
               rez = Double (numOne)! - Double (numTwo)!
          case "*":
               rez = Double (numOne)! * Double (numTwo)!
          case "/":
               rez = Double (numOne)! / Double (numTwo)!
          default:
               break
          }
          
          if rez.truncatingRemainder(dividingBy: 1.0) == 0.0 {
               label.text = String(Int(rez))
          }
          else
          {
               label.text = String(rez)
          }
     }
     
     @IBAction func changeSize(_ sender: UIStepper) {
          let font = label.font?.fontName
          let fontSize = CGFloat(sender.value)
          
          label.font = UIFont(name: font!, size: fontSize)
          
     }
     
//     fontSize.isHidden = !fontSize.isHidden
     
     
}

