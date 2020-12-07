//
//  RegisterCoordinator.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 7.12.2020.
//

import UIKit

final class RegisterCoordinator: Coordinator {
    weak var parentCoordinator: Coordinator?
    var childCoordinators = [Coordinator]()
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let registerViewController = RegisterViewController()
        registerViewController.coordinator = self
        navigationController.pushViewController(registerViewController, animated: true)
    }
}
