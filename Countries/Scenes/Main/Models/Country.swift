//
//  Country.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import Foundation

struct Country: Codable {
    let name: Description
    let flags: Flag
}

struct Description: Codable {
    let common: String
}

struct Flag: Codable {
    let png: String
}
