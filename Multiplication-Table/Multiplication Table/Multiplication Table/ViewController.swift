//
//  ViewController.swift
//  Multiplication Table
//
//  Created by Muhamed Alkhatib on 17/08/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    
    @IBOutlet weak var lablel1: UILabel!
    @IBOutlet weak var lablel2: UILabel!
    @IBOutlet weak var lablel3: UILabel!
    @IBOutlet weak var lablel4: UILabel!
    @IBOutlet weak var lablel5: UILabel!
    @IBOutlet weak var lablel6: UILabel!
    @IBOutlet weak var lablel7: UILabel!
    @IBOutlet weak var lablel8: UILabel!
    @IBOutlet weak var lablel9: UILabel!
    @IBOutlet weak var lablel10: UILabel!
    @IBOutlet weak var lablel11: UILabel!
    @IBOutlet weak var lablel12: UILabel!
    
    var arrLabels = [UILabel]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        arrLabels.append(contentsOf: [lablel1 , lablel2 , lablel3 , lablel4 , lablel5 , lablel6 , lablel7 , lablel8 , lablel9 , lablel10 , lablel11 , lablel12])
        numberLabel.text = "1"
        
        for label in arrLabels{
            let index = arrLabels.firstIndex(of: label)! + 1
            label.text = String(index) + " x " + String(1) + " = " + String(index)
        }
    }

    @IBAction func stepperChanged(_ sender: UIStepper) {
        numberLabel.text = String(Int(sender.value))
        for label in arrLabels{
            let index = arrLabels.firstIndex(of: label)! + 1
            let value = Int(sender.value)
            label.text = String(index) + " * " + String(value) + " = " + String(index*value)
        }
        
    }
    
}

