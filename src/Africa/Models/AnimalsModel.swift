//
//  AnimalsModel.swift
//  Africa
//
//  Created by Tiago de Oliveira on 04/08/24.
//

import Foundation

struct AnimalModel: Codable {
    let id, name, headline, description: String
    let link: String
    let image: String
    let gallery, fact: [String]
}
