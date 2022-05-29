//
//  ViewController.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import UIKit

class MainViewController: UITableViewController {
    
    var countries: [Country] = []
    var controller: MainControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return countries.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "CountryCell", for: indexPath) as? CountryCell {
            cell.setupCell(countries[indexPath.row])
            return cell
        }
        
        return UITableViewCell()
    }
    
    func setupView() {
        title = "Countries"
        tableView.register(CountryCell.self, forCellReuseIdentifier: "CountryCell")
        controller?.loadCountries()
    }
}

extension MainViewController: MainControllerDelegate {
    func didFailedLoadedCountries(message: String) {
        let alertController = UIAlertController(title: "Something Wrong happen!", message: message, preferredStyle: .alert)
        let cancelButtonAction = UIAlertAction(title: "Cancel", style: .cancel)
        alertController.addAction(cancelButtonAction)
        present(alertController, animated: true)
    }
    
    func didLoadedCountries(countries: [Country]) {
        self.countries = countries
        DispatchQueue.main.async {
            self.tableView.reloadData()
        }
    }
}
