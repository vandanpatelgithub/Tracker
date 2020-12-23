//
//  Tip.swift
//  Tracker2
//
//  Created by Vandan Patel on 12/23/20.
//

import Foundation

struct Tip: Codable {
    let text: String
    let children: [Tip]?
}
