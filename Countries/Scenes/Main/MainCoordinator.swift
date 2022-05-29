//
//  MainCoordinator.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import Foundation
import UIKit

final class MainCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
    var children: [Coordinator] = []
    var navigationController: UINavigationController
    
    init(navCon: UINavigationController) {
        navigationController = navCon
    }
    
    func start() {
        let mainController = MainController()
        let mainViewController = MainViewController()
        mainController.delegate = mainViewController
        mainViewController.controller = mainController
        navigationController.pushViewController(mainViewController, animated: true)
    }
}
