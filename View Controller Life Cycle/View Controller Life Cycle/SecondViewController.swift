//
//  SecondViewController.swift
//  View Controller Life Cycle
//
//  Created by Mohamed Elkomey on 07/07/2023.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        print("vc2 did load")
    }


    override func viewWillAppear(_ animated: Bool) {
        print("vc2 Will Appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
         print("vc2 did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("vc2 will disappear")
    }
    override func viewDidDisappear(_ animated: Bool) {
        print("vc2 did disappear")
    }
    @IBAction func goBck(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }


}
