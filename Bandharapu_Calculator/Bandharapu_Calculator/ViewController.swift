//
//  ViewController.swift
//  Bandharapu_Calculator
//
//  Created by Bandharapu,Manish Goud on 2/10/22.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var DisplayOut: UILabel!
    
    var l : Double = -1.1
        var b : Double = 0
        var n : Double = 0
        
        var Operate = "+"

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func CleraAll(_ sender: UIButton) {
    
    l=0
            b=0
            DisplayOut.text=""
}

    @IBAction func ClearB(_ sender: UIButton) {
        DisplayOut.text=""
    }
    
    @IBAction func Negative(_ sender: UIButton) {
                 if(DisplayOut.text?.first=="-"){
                    DisplayOut.text?.removeFirst()
                }
                else{
                    DisplayOut.text="-\(DisplayOut.text!)"
                }
                

    }
    
    @IBAction func Divide(_ sender: UIButton) {
        Operate = "/"
        l = Double(DisplayOut.text!)!
        DisplayOut.text=""

    }
    
    @IBAction func Multiply(_ sender: UIButton) {
        Operate = "*"
                l = Double(DisplayOut.text!)!
                DisplayOut.text=""

    }
    
    @IBAction func Addition(_ sender: UIButton) {
        Operate = "+"
                l = Double(DisplayOut.text!)!
                DisplayOut.text=""

    }
    
    @IBAction func Subtraction(_ sender: UIButton) {
        Operate = "-"
                l = Double(DisplayOut.text!)!
                DisplayOut.text=""
            }

    
    @IBAction func Equalsto(_ sender: UIButton) {
        b = Double(DisplayOut.text!)!
                        
                        switch Operate {
                        case "+":
                            n = l+b
                            DisplayOut.text = String(n)
                        case "-":
                            n = l-b
                            DisplayOut.text = String(n)
                        case "*":
                            n = l*b
                            DisplayOut.text = String(n)
                        case "/":
                            n = l/b
                            if(b==0){
                                DisplayOut.text="Error"
                            }
                            else{
                            let result1=round(n*100000)/100000
                            DisplayOut.text = String(result1)
                            }
                        case "%":

                            n = l.truncatingRemainder(dividingBy: b)
                            let result=round(n*10)/10
                            
                            DisplayOut.text = String(result)
                        default:
                            DisplayOut.text = "ERROR"
            }
                let splitOutput =  DisplayOut.text!.components(separatedBy: ".")
                let test = DisplayOut.text
                if(!(test == "Error")){
                if(splitOutput[1]=="0"){
                    DisplayOut.text = splitOutput[0]
                }
                }

    }
    
    @IBAction func Percentile(_ sender: UIButton) {
        Operate = "%"
                l = Double(DisplayOut.text!)!
                DisplayOut.text=""

    }
    
    @IBAction func Decimal(_ sender: UIButton) {
        if(!DisplayOut.text!.contains("."))
                {
                   DisplayOut.text = DisplayOut.text! + "."
                    return
                
            }

    }
    
    @IBAction func Nine(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "9"
    }
    
    @IBAction func Eight(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "8"
    }
    
    @IBAction func Seven(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "7"
    }
    
    @IBAction func Six(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "6"
    }
    
    @IBAction func Five(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "5"
    }
    
    @IBAction func Four(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "4"
    }
    
    @IBAction func Three(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "3"
    }
    
    @IBAction func Two(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "2"
    }
    
    @IBAction func One(_ sender: UIButton) {
        DisplayOut.text = DisplayOut.text! + "1"
    }
    
     @IBAction func Zero(_ sender: UIButton) {
         DisplayOut.text = DisplayOut.text! + "0"
    }
}

