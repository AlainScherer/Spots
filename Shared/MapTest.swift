//
//  MapTest.swift
//  AppLearning
//
//  Created by Alain Scherer on 22.08.20.
//

import SwiftUI
import Mapbox

struct MapTest: View {
    
    @State var annotations: [MGLPointAnnotation] = [
        MGLPointAnnotation(title: "Fish", coordinate: .init(latitude: 47.360035, longitude: 8.538363))
    ]
    
    var body: some View {
        MapView(annotations: $annotations)
            .centerCoordinate(.init(latitude: 47.360035, longitude: 8.538363))
            .zoomLevel(13)
            .styleURL(URL(string: "mapbox://styles/a207/ck0v02p430oy51co7h97q2qw7")!)
    }
}


struct MapTest_Previews: PreviewProvider {
    static var previews: some View {
        MapTest()
            .previewDevice("iPhone 11 Pro")
    }
}

