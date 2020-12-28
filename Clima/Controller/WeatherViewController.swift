//
//  ViewController.swift
//  Clima
//
//  Created by mahesh mannapperuma on R 2/12/23.
//

import UIKit

class WeatherViewController: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var conditionViewImageView: UIImageView!
    
//    @IBOutlet weak var temperaturaLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var searchTextField: UITextField!
    
    //connect weather manager struct
    var weatherManager = WeatherManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //delegate return method
        searchTextField.delegate = self
    }
    
    // pressed the search button and get the text field entered value
    @IBAction func searchPressed(_ sender: UIButton) {
        //return the keybord
        searchTextField.endEditing(true)
        print(searchTextField.text!)
    }
    
    //text field return function
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //return the keybord
        searchTextField.endEditing(true)
        print(searchTextField.text!)
        return true
    }
    
    //click the text field and press the return button
    func textFieldShouldEndEditing(_ textField: UITextField) -> Bool {
        if searchTextField.text != "" {
            return true
        } else {
            textField.placeholder = "Type Something"
            return false
        }
    }
    
    
    //clear the text field after searching and get the weather
    func textFieldDidEndEditing(_ textField: UITextField) {
        
        //Use searchTextField.text to get the weather for the city
        if let city = searchTextField.text {
            weatherManager.fetchWeather(cityName: city)
        }
        searchTextField.text = ""
    }
    

}

