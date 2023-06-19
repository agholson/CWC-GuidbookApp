//
//  City.swift
//  GuidbookApp
//
//  Created by Leone on 5/28/23.
//

import Foundation

struct City: Identifiable {
    
    var id = UUID() // Create new ID for each instance
    var name: String
    var summary: String
    var imageName: String
    
    var attractions: [Attraction]
}
