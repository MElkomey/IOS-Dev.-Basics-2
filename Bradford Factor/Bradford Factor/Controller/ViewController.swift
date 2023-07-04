//
//  ViewController.swift
//  Bradford Factor
//
//  Created by Muhamed Alkhatib on 21/08/2020.
//

import UIKit

class ViewController: UIViewController {
    var seperateDays:Int = 0
    var TotalDays:Int = 0
    var result:Int = 0

    @IBOutlet weak var seperateDaysLbl: UILabel!
    @IBOutlet weak var totalDaysLbl: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func seperateDaysChanged(_ sender: UIStepper) {
        seperateDaysLbl.text = String(Int(sender.value))
        seperateDays = Int(sender.value)
    }
    @IBAction func totalDaysChanged(_ sender: UIStepper) {
        totalDaysLbl.text = String(Int(sender.value))
        TotalDays = Int(sender.value)
    }
    
    @IBAction func calculateBradfordFactor(_ sender: UIButton) {
        result = seperateDays * seperateDays * TotalDays
        performSegue(withIdentifier: "toResultSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController = segue.destination as! ResultViewController
        resultViewController.factor = result
//        resultViewController.modalPresentationStyle = .fullScreen
    }
}

