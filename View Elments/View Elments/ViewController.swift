//
//  ViewController.swift
//  View Elments
//
//  Created by Mohamed Elkomey on 29/06/2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var messageLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func loginButtonPressed(_ sender: UIButton) {
        messageLabel.text = "Your username is \(usernameTextField.text!)"
    }
    

}

