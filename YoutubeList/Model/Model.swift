//
//  Model.swift
//  YoutubeList
//
//  Created by Alex Karamanets on 14.02.2023.
//

import Foundation

struct Video: Identifiable {
    
    var id = UUID()
    let imageName  : String
    let title      : String
    let description: String
    let viewCount  : Int
    let upLoadDate : String
    let url        : URL
    
}
