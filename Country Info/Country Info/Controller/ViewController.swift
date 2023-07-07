//
//  ViewController.swift
//  Country Info
//
//  Created by Muhamed Alkhatib on 26/08/2020.
//

import UIKit
import CoreLocation



class ViewController: UIViewController {
    
    @IBOutlet weak var searchTextField: UITextField!
    
    @IBOutlet weak var countryLbl: UILabel!
    @IBOutlet weak var capitalLbl: UILabel!
    @IBOutlet weak var regionLbl: UILabel!
    @IBOutlet weak var populationLbl: UILabel!
    
    var countryAPI = CountryAPI()
    var locationManager = CLLocationManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTextField.delegate = self
        searchTextField.returnKeyType = .search
        countryAPI.delegate = self
        locationManager.delegate = self
    }

    @IBAction func searchButtonPressed(_ sender: UIButton) {
        updateUI()
    }
    
    @IBAction func locationButtonPressed(_ sender: UIButton) {
        locationManager.requestWhenInUseAuthorization()
        locationManager.requestAlwaysAuthorization()
        locationManager.requestLocation()
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

extension ViewController:CountryAPIDelegate{
    func didRetrieveCountryInfo(country : Country) {
       // print(country)
        DispatchQueue.main.async {
            self.countryLbl.text = country.name.common
            self.capitalLbl.text = country.capital[0]
            self.regionLbl.text = country.region
            self.populationLbl.text = String(country.population)
        }
    }
}

extension ViewController:CLLocationManagerDelegate{
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location = locations.last
        let geocoder = CLGeocoder()
        geocoder.reverseGeocodeLocation(location!) { placemarks, error in
           // print(placemarks?.last?.isoCountryCode)
            if let countryName = placemarks?.last?.country{
                self.countryAPI.fetchData(country: countryName)
            }
        }
        //print(location)
    }
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print(error)
    }
    
}

