//
//  ElementsViewController.swift
//  View Elments
//
//  Created by Mohamed Elkomey on 29/06/2023.
//

import UIKit

class ElementsViewController: UIViewController {
    @IBOutlet weak var stepperLabel: UILabel!
    @IBOutlet weak var sliderLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        stepperLabel.text = String(0)
        sliderLabel.text = String(50)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        print(sender.isOn)
    }
    @IBAction func segmentChanged(_ sender: UISegmentedControl) {
        print(sender.selectedSegmentIndex)
        print(sender.titleForSegment(at: sender.selectedSegmentIndex)!)
    }
    
    @IBAction func stepperChanged(_ sender: UIStepper) {
        stepperLabel.text = String(sender.value)
    }
    @IBAction func sliderChanged(_ sender: UISlider) {
        sliderLabel.text = String(Int(sender.value))
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
