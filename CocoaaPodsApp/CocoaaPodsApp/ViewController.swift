//
//  ViewController.swift
//  CocoaaPodsApp
//
//  Created by Mohamed Elkomey on 07/07/2023.
//

import UIKit
import CLTypingLabel

class ViewController: UIViewController {

    @IBOutlet weak var lbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func playButtonPressed(_ sender: UIButton) {
        lbl.text = "Testing CLTYPINGLABEL pod"
    }
    
}

