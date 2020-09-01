//
//  WaternameData.swift
//  AppLearning
//
//  Created by Alain Scherer on 30.08.20.
//

import SwiftUI

struct Tag: Codable {
    let name: String
}

struct Place: Identifiable, Codable {
    let id:  Int
    let type: String
    let tags: Tag
}

struct OverpassResponse: Codable {
    let elements: [Place]
}

class Api {
    func getPosts(completion: @escaping ([Place]) -> ()) {
        let url = URL(string: "https://www.overpass-api.de/api/interpreter?data=[out:json][timeout:25];(way[natural=water](around:500,47.365579,8.540222);relation[natural=water](around:500,47.347682,8.539231););out%20tags;")!
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let response = try! JSONDecoder().decode(OverpassResponse.self, from: data!)
            DispatchQueue.main.async {
                completion(response.elements)
            }
        }
        .resume()
    }
}
