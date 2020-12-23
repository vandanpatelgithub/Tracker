//
//  Location.swift
//  Tracker2
//
//  Created by Vandan Patel on 12/22/20.
//

import Foundation

struct Location: Codable, Identifiable {
    let id: Int
    let name: String
    let country: String
    let description: String
    let more: String
    let latitude: Double
    let longitude: Double
    let heroPicture: String
    let advisory: String
    let pictures: [String]
    
    static let example = Location(id: 1, name: "Great Smokey Mountains", country: "United States", description: "a great place to visit.", more: "More text here", latitude: 35.4523, longitude: -83.234, heroPicture: "smokies", advisory: "Beware of the bears!", pictures: [])
}
