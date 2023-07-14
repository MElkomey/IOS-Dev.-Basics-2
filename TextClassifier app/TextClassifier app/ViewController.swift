//
//  ViewController.swift
//  TextClassifier app
//
//  Created by Mohamed Elkomey on 12/07/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageTxtField: UITextField!
    @IBOutlet weak var emojiLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func classifyPressed(_ sender: UIButton) {
  
        let textClassifier = TextClassifier()
        let prediction = try! textClassifier.prediction(text: messageTxtField.text!)
        print(prediction.label)
        switch prediction.label{
        case "Positive":
            emojiLbl.text = "😀"
        case "Negative":
            emojiLbl.text = "☹️"
        default:
            emojiLbl.text = "😐"
        }
    }
    
}

