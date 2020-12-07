//
//  MainCoordinator.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

final class MainCoordinator: Coordinator {
    var parentCoordinator: Coordinator?
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
        let loginCoordinator = LoginCoordinator(navigationController: navigationController)
        loginCoordinator.parentCoordinator = self
        childCoordinators.append(loginCoordinator)
        loginCoordinator.start()
    }
    
    func register() {
        let registerCoordinator = RegisterCoordinator(navigationController: navigationController)
        registerCoordinator.parentCoordinator = self
        childCoordinators.append(registerCoordinator)
        registerCoordinator.start()
    }
}
