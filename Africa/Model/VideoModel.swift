//
//  VideoModel.swift
//  Africa
//
//  Created by Alley Pereira on 03/06/21.
//

import Foundation

struct Video: Codable, Identifiable {
    let id: String
    let name: String
    let headline: String

    // Computer propety
    var thumbnail: String {
        "video-\(id)"
    }
}
