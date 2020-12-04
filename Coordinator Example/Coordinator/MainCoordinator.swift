//
//  MainCoordinator.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

class MainCoordinator: Coordinator {
    var childCoordinators = [Coordinator]()
    
    var navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        let initialViewController = InitialViewController()
        initialViewController.coordinator = self
        navigationController.pushViewController(initialViewController, animated: true)
    }
    
    func login() {
        let loginViewController = LoginViewController()
        loginViewController.coordinator = self
        navigationController.pushViewController(loginViewController, animated: true)
    }
    
    func register() {
        let registerViewController = RegisterViewController()
        registerViewController.coordinator = self
        navigationController.pushViewController(registerViewController, animated: true)
    }
}
