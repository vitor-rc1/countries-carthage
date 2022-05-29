//
//  CoordinatorProtocol.swift
//  Countries
//
//  Created by Vitor Conceicao on 29/05/22.
//

import Foundation
import UIKit

protocol Coordinator {
    var parentCoordinator: Coordinator? { get set }
    var children: [Coordinator] { get set }
    var navigationController: UINavigationController { get set }

    func start()
}
