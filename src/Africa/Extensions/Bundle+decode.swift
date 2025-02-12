//
//  Bundle+decode.swift
//  Africa
//
//  Created by Tiago de Oliveira on 09/02/25.
//

import Foundation

enum DecodingError: Error {
    case fileNotFound
    case decodingFailed
}

extension Bundle {
    func decode<T: Decodable>(_ type: T.Type, _ file: String) throws -> T {
        guard let url = url(forResource: file, withExtension: nil) else {
            throw DecodingError.fileNotFound
        }
        do {
            let data = try Data(contentsOf: url)
            let loaded: T = try JSONDecoder().decode(type, from: data)
            return loaded
        } catch {
            throw DecodingError.decodingFailed
        }
    }
}
