//
//  CodableBundleExtension.swift
//  Africa
//
//  Created by Alley Pereira on 26/05/21.
//

import Foundation

extension Bundle {
    func decode(_ file: String) -> [CoverImage] {

        // 1. Locate the json file
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed  to locate \(file) in bundle.")
        }

        // 2. Create a property for the data
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }

        // 3. Create a decoder
        let decoder = JSONDecoder()

        // 4. Create a property for the decoded data
        guard let loaded = try? decoder.decode([CoverImage].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle.")
        }
        // 5. Return the read-to-use data
        return loaded
    }
}
