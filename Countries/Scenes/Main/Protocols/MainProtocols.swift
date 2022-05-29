//
//  MainProtocols.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import Foundation

protocol MainControllerProtocol {
    func loadCountries()
}

protocol MainControllerDelegate: AnyObject {
    func didLoadedCountries(countries: [Country])
    func didFailedLoadedCountries(message: String)
}
