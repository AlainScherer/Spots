//
//  WaternameData.swift
//  AppLearning
//
//  Created by Alain Scherer on 30.08.20.
//

import SwiftUI

struct Post: Identifiable, Codable {
    let id: UUID
    var name: String
    var water: String
    
    }

class Api {
    func getPosts(completion: @escaping ([Post]) -> ()) {
        let url = URL(string: "https://www.overpass-api.de/api/interpreter?data=[out:json][timeout:25];(way[natural=water](around:500,47.365579,8.540222);relation[natural=water](around:500,47.347682,8.539231););out tags geom;")!
        
        URLSession.shared.dataTask(with: url) { (data, _, _) in
            
            let posts = try! JSONDecoder().decode([Post].self, from: data!)
            DispatchQueue.main.async {
                completion(posts)
            }
        }
        .resume()
    }
}
