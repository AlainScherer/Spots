//
//  AppLearningApp.swift
//  Shared
//
//  Created by Alain Scherer on 17.08.20.
//

import SwiftUI

@main
struct AppLearningApp: App {
    var body: some Scene {
        WindowGroup {
            WeatherView()
        }
    }
}

struct AppLearningApp_Previews: PreviewProvider {
    static var previews: some View {
        /*@START_MENU_TOKEN@*/Text("Hello, World!")/*@END_MENU_TOKEN@*/
    }
}
