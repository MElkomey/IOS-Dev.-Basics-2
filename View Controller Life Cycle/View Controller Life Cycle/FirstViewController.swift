//
//  ViewController.swift
//  View Controller Life Cycle
//
//  Created by Mohamed Elkomey on 07/07/2023.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("vc1 did load")
    }


    override func viewWillAppear(_ animated: Bool) {
        print("vc1 Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
         print("vc1 did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("vc1 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("vc1 did disappear")
    }
}

