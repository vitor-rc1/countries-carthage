//
//  MainController.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import Foundation
import Alamofire

final class MainController: MainControllerProtocol {
    let baseURL = "https://restcountries.com/v3.1/"
    weak var delegate: MainControllerDelegate?
    
    func loadCountries() {
        AF.request(baseURL + "all").responseDecodable(of: [Country].self) { response in
            switch response.result {
            case .success(let countries):
                self.delegate?.didLoadedCountries(countries: countries)
            case .failure(let error):
                self.delegate?.didFailedLoadedCountries(message: error.localizedDescription)
            }
        }
    }
    
    
}
