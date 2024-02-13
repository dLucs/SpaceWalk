//
//  Bundle-Decodable.swift
//  SpaceWalk
//
//  Created by Lucas on 8/2/24.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String ) -> T {
        //Find the data
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        //Load data instance
        guard let data  = try? Data(contentsOf: url) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        let decoder = JSONDecoder()
        let formatter = DateFormatter()
        formatter.dateFormat = "y-MM-dd"
        decoder.dateDecodingStrategy = .formatted(formatter)
        
        //Decode it to data dictionary
        guard let loaded = try? decoder.decode(T.self, from: data) else {
            fatalError("Failed to locate \(file) in bundle")
        }
        return loaded
    }
}
