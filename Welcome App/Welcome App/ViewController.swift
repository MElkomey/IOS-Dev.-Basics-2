//
//  ViewController.swift
//  Welcome App
//
//  Created by Mohamed Elkomey on 28/06/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblWelcome: UILabel!
    @IBOutlet weak var txtFieldName: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnWelcome(_ sender: Any) {
        lblWelcome.text = "Welcome " + txtFieldName.text!
    }
    
}

