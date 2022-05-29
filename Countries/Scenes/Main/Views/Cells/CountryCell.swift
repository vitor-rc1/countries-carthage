//
//  CountryCell.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import Foundation
import UIKit
import SDWebImage

class CountryCell: UITableViewCell {
    func setupCell(_ country: Country) {
        textLabel?.text = country.name.common
        imageView?.sd_setImage(with: URL(string: country.flags.png))
    }
}
