//
//  Locations.swift
//  Tracker2
//
//  Created by Vandan Patel on 12/22/20.
//

import Foundation

class Locations: ObservableObject {
    let places: [Location]
    
    var firstLocation: Location { places[0] }
    
    init() {
        guard
            let url = Bundle.main.url(forResource: "locations", withExtension: "json"),
            let data = try? Data(contentsOf: url),
            let decodedPlaces = try? JSONDecoder().decode([Location].self, from: data) else {
            places = []
            return
        }
        places = decodedPlaces
    }
}
