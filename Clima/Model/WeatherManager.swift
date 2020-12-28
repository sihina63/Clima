//
//  WeatherManager.swift
//  Clima
//
//  Created by mahesh mannapperuma on R 2/12/24.
//

import Foundation

struct WeatherManager {
    let weatherURL = "http://api.openweathermap.org/data/2.5/weather?appid=621fb533e46cbdadde3a73e2f6fce786&units=metric"
    
    func fetchWeather(cityName: String) {
        let urlString = "\(weatherURL)&q=\(cityName)"
        
        print(urlString)
    }
}
