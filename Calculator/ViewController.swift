//
//  ViewController.swift
//  Calculator
//
//  Created by Prasoon Shakya on 11/20/20.
//

import UIKit

class ViewController: UIViewController {
    var previousNum: Double = 0
    var given: Double = 0
    var operatorSign = "N/A"
    var isDecimal = false
    var decimalCount = 10
    
    @IBOutlet weak var display: UILabel!
    
    @IBAction func c_button(_ sender: Any) {
        given = 0
        previousNum = 0
        isDecimal = false
        decimalCount = 10
        operatorSign = "N/A"
        display.text = "0"
    }
    @IBAction func pm_Button(_ sender: Any) {
        if operatorSign == "N/A"{
            previousNum *= -1
            isDecimal = false
            decimalCount = 10
            displayNum(num: previousNum)
        }
        else{
            given *= -1
            isDecimal = false
            decimalCount = 10
            displayNum(num: given)
        }
    }
    @IBAction func percentage_button(_ sender: Any) {
        percentage()
    }
    @IBAction func divide_button(_ sender: Any) {
        divide()
    }
    @IBAction func seven_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 7)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 7)
            displayNum(num: previousNum)
        }
    }
    @IBAction func eight_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 8)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 8)
            displayNum(num: previousNum)
        }
    }
    @IBAction func nine_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 9)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 9)
            displayNum(num: previousNum)
        }
    }
    @IBAction func multiply_button(_ sender: Any) {
        multiply()
    }
    @IBAction func four_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 4)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 4)
            displayNum(num: previousNum)
        }
    }
    @IBAction func five_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 5)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 5)
            displayNum(num: previousNum)
        }
    }
    @IBAction func six_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 6)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 6)
            displayNum(num: previousNum)
        }
    }
    @IBAction func minus_button(_ sender: Any) {
        minus()
    }

    @IBAction func one_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 1)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 1)
            displayNum(num: previousNum)
        }

    }
    @IBAction func two_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 2)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 2)
            displayNum(num: previousNum)
        }
    }
    @IBAction func three_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 3)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 3)
            displayNum(num: previousNum)
        }
    }
    @IBAction func plus_button(_ sender: Any) {
        plus()
    }
    @IBAction func zero_button(_ sender: Any) {
        if operatorSign != "N/A"{
            given = updateNum(giv: given, add: 0)
            displayNum(num: given)
        }
        else{
            given = 0
            previousNum = updateNum(giv: previousNum, add: 0)
            displayNum(num: previousNum)
        }
    }
    @IBAction func dot_button(_ sender: Any) {
        if !isDecimal{
            isDecimal = true
        }
    }
    @IBAction func equals_button(_ sender: Any) {
        switch operatorSign {
        case "%":
            percentage()
        case "/":
            divide()
        case "*":
            multiply()
        case "-":
            minus()
        case "+":
            plus()
        default:
            given = 0
            displayNum(num: previousNum)
        }
        operatorSign = "N/A"
        decimalCount = 10
        isDecimal = false
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func updateNum( giv: Double, add: Double) -> Double{
        if isDecimal{
            let res = giv + (add / Double(decimalCount))
            decimalCount *= 10
            return res
        }
        else{
            let res = (giv * 10) + add
            return res
        }
    }

    func percentage(){
        if operatorSign == "N/A"{
            operatorSign = "%"
            isDecimal = false
            decimalCount = 10
            display.text = "0"
        }
        else{
            operatorSign = "%"
            previousNum = (previousNum * given) / 100
            isDecimal = false
            decimalCount = 10
            displayNum(num: previousNum)
        }
    }
    
    func divide(){
        if operatorSign == "N/A"{
            operatorSign = "/"
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: given)
        }
        else{
            operatorSign = "/"
            previousNum = previousNum / given
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: previousNum)
        }
    }
    
    func multiply(){
        if operatorSign == "N/A"{
            operatorSign = "*"
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: given)
        }
        else{
            operatorSign = "*"
            previousNum = previousNum * given
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: previousNum)
        }
    }
    func minus(){
        if operatorSign == "N/A"{
            operatorSign = "-"
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: given)
        }
        else{
            operatorSign = "-"
            previousNum = previousNum - given
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: previousNum)
        }
    }
    func plus(){
        if operatorSign == "N/A"{
            operatorSign = "+"
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: given)
        }
        else{
            operatorSign = "+"
            previousNum = previousNum + given
            given = 0
            isDecimal = false
            decimalCount = 10
            displayNum(num: previousNum)
        }
    }
    func displayNum(num: Double) ->Void{
        if num == Double(Int(num)){
            display.text = String (Int(num))
        }
        else{
            display.text = String(num)
        }
    }
}

