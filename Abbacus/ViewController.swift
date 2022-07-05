//
//  ViewController.swift
//  Abbacus
//
//  Created by Consultant on 7/4/22.
//

import UIKit

enum Operation:String{
    case Add = "+"
    case Substract = "-"
    case Divide = "/"
    case Multiply = "x"
    case NULL = "Empty"
}

class ViewController: UIViewController {

    @IBOutlet weak var outputLabel: UILabel!
    
    var runningNumber = ""
    var leftValue = ""
    var rightValue = ""
    var result = ""
    var currentOperation:Operation = .NULL
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        outputLabel.text = "0"
    }

    @IBAction func numberPressed(_ sender: UIButton) {
        runningNumber += "\(sender.tag)"
        outputLabel.text = runningNumber
    }
    
    @IBAction func allClearPressed(_ sender: UIButton) {
        runningNumber = ""
        leftValue = ""
        rightValue = ""
        result = ""
        currentOperation = .NULL
        outputLabel.text = "0"
    }
    
    @IBAction func equalPressed(_ sender: UIButton) {
        operatioN(operatioN: currentOperation)
    }
    
    @IBAction func addPressed(_ sender: UIButton) {
        operatioN(operatioN: Operation.Add)
    }
    
    @IBAction func substractPressed(_ sender: UIButton) {
        operatioN(operatioN: Operation.Substract)
    }
    
    @IBAction func multiplyPressed(_ sender: UIButton) {
        operatioN(operatioN: Operation.Multiply)
    }
    
    @IBAction func dividePressed(_ sender: UIButton) {
        operatioN(operatioN: Operation.Divide)
    }
    
    func operatioN(operatioN: Operation){
        if currentOperation != .NULL {
            if runningNumber != ""{
                rightValue = runningNumber
                runningNumber = ""
                
                if currentOperation == .Add {
                    result = "\(Double(leftValue)! + Double (rightValue)!)"
                } else if currentOperation == .Substract{
                    result = "\(Double(leftValue)! - Double (rightValue)!)"
                } else if currentOperation == .Multiply {
                    result = "\(Double(leftValue)! * Double (rightValue)!)"
                }else if currentOperation == .Divide {
                    result = "\(Double(leftValue)! / Double (rightValue)!)"
                }
                leftValue = result
                if (Double(result)!.truncatingRemainder(dividingBy: 1)==0){
                    result="\(Int(Double(result)!))"
                }
                outputLabel.text = result
            }
            currentOperation = operatioN
        } else {
            leftValue = runningNumber
            runningNumber = ""
            currentOperation = operatioN
        }
    }
    
    
}

