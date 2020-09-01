//
//  WeatherData.swift
//  AppLearning
//
//  Created by Alain Scherer on 01.09.20.
//

import Foundation

struct  WeatherPlace: Identifiable, Codable {
    let name: String
    let id: Int
    let weather: [Weather]
    let main: Air
    let wind: Wind
    
}

struct Air: Codable {
    let temp: Double
    let temp_min: Double
    let temp_max: Double
}

struct Wind: Codable {
    let speed: Double
    let deg: Int
}

struct Weather: Identifiable, Codable {
    let id:  Int
    let main: String
    let description: String
    let icon: String
}

class WeatherApi {
    func getWeather(completion: @escaping (WeatherPlace) -> ()) {
        let url = URL(string: "https://api.openweathermap.org/data/2.5/weather?lat=47.352193&lon=8.539697&appid=0e8f6aac64ccd7f6c76e46e83d56b64f")!
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let response = try! JSONDecoder().decode(WeatherPlace.self, from: data!)
            DispatchQueue.main.async {
                completion(response)
            }
        }
        .resume()
    }
}
