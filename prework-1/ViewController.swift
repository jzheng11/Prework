//
//  ViewController.swift
//  prework-1
//
//  Created by Jenny Zheng on 12/30/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var billfield: UITextField!
    @IBOutlet weak var Tiplable: UILabel!
    @IBOutlet weak var toatllable: UILabel!
    @IBOutlet weak var TipControl: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    
    @IBAction func calculateTip(_ sender: Any) {
        
        let bill = Double(billfield.text!) ?? 0
        
        let tipPerentages = [0.15, 0.18, 0.2]
        let tip = bill*tipPerentages[TipControl.selectedSegmentIndex]
        let total = bill+tip
        
        Tiplable.text = String(format:"$%.2f", tip)
        toatllable.text = String(format:"$%.2f", total)
    }
}

