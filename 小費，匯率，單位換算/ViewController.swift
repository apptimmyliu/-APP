//
//  ViewController.swift
//  小費，匯率，單位換算
//
//  Created by Timmy on 2023/9/12.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var perpriceLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var peopleTextField: UITextField!
    @IBOutlet weak var percentTextField: UITextField!
    @IBOutlet weak var priceTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func calculate(_ sender: Any) {
        let priceText = priceTextField.text!
        let percentText = percentTextField.text!
        let peopleText = peopleTextField.text!
        let price = Double(priceText)
        let percent = Double(percentText)
        let people = Double(peopleText)
        if  price != nil, percent != nil {
            let tip = price! * percent! / 100
            tipLabel.text = String(format: "%.1f", tip)
        }
        if  price != nil, percent != nil, people != nil {
            let pricecount = (price! + price! * ( percent! / 100)) / people!
            perpriceLabel.text = String(format: "%.1f", pricecount)
        }
        view.endEditing(true)
    }
}
