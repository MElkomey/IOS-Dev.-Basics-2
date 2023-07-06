//
//  ViewController.swift
//  Country Info
//
//  Created by Muhamed Alkhatib on 26/08/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    @IBOutlet weak var regionLbl: UILabel!
    @IBOutlet weak var populationLbl: UILabel!
    
    var countryAPI = CountryAPI()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTextField.delegate = self
        searchTextField.returnKeyType = .search
    }

    @IBAction func searchButtonPressed(_ sender: UIButton) {
        updateUI()
    }
    
    @IBAction func locationButtonPressed(_ sender: UIButton) {
        print("Location key pressed")
    }
    
    func updateUI(){
        countryAPI.fetchData(country: searchTextField.text! )
    }
}
extension ViewController: UITextFieldDelegate{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
       updateUI()
        return true
    }
}

