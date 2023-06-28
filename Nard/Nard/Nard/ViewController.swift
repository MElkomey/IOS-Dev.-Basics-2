//
//  ViewController.swift
//  Nard
//
//  Created by Muhamed Alkhatib on 15/08/2020.
//

import UIKit

class ViewController: UIViewController {
    let arrImages = [UIImage(named: "dice1"), UIImage(named: "dice2"), UIImage(named: "dice3"), UIImage(named: "dice4"), UIImage(named: "dice5"), UIImage(named: "dice5")]

    @IBOutlet weak var imgDice2: UIImageView!
    @IBOutlet weak var imgDice1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnPlay(_ sender: UIButton) {
        let random = Int.random(in: 0...5)
        imgDice1.image = arrImages[random]
        imgDice2.image = arrImages.randomElement()!
    }
    
}

