//
//  Attraction.swift
//  GuidbookApp
//
//  Created by Leone on 5/28/23.
//

import Foundation

struct Attraction: Identifiable {
    
    var id = UUID()
    var name: String
    var summary: String
    var longDescription: String
    var imageName: String
    var latLong: String // expressed as single string for passing into iOS
}
