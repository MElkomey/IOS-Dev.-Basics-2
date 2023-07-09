//
//  ViewController.swift
//  User Defaults Demo
//
//  Created by Mohamed Elkomey on 08/07/2023.
//

import UIKit

class ViewController: UIViewController {
    
    //singleton
    var defaults = UserDefaults.standard

    @IBOutlet weak var muteSwitch: UISwitch!
    @IBOutlet weak var levelSlider: UISlider!
    @IBOutlet weak var speakerSegment: UISegmentedControl!
    @IBOutlet weak var modeSegment: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //retrieve values of keys and apply while loading view
        //if keys was not saved before each value will return false or 0 or 0.0 as its type
        print(defaults.bool(forKey: "muteSwitchIsOn"))
        muteSwitch.isOn = defaults.bool(forKey: "muteSwitchIsOn")
        print(defaults.float(forKey: "levelSliderValue"))
        levelSlider.value = defaults.float(forKey: "levelSliderValue")
        print(defaults.integer(forKey: "speakerSegmentSelectedIndex"))
        speakerSegment.selectedSegmentIndex = defaults.integer(forKey: "speakerSegmentSelectedIndex")
        print(defaults.integer(forKey: "modeSegmentSelectedIndex"))
        modeSegment.selectedSegmentIndex = defaults.integer(forKey: "modeSegmentSelectedIndex")
        //print user defaults file
        print(NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true))
    }
    
    @IBAction func modeSegmentChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            view.backgroundColor = UIColor.white
        }else{
            view.backgroundColor = UIColor.cyan
        }
    }
    
    @IBAction func savePressed(_ sender: UIButton) {
        print(muteSwitch.isOn)
        print(levelSlider.value)
        print(speakerSegment.selectedSegmentIndex)
        print(modeSegment.selectedSegmentIndex)
        //save vlues in plist
        defaults.set(muteSwitch.isOn, forKey: "muteSwitchIsOn")
        defaults.set(levelSlider.value, forKey: "levelSliderValue")
        defaults.set(speakerSegment.selectedSegmentIndex, forKey: "speakerSegmentSelectedIndex")
        defaults.set(modeSegment.selectedSegmentIndex, forKey: "modeSegmentSelectedIndex")
    }
    
}

