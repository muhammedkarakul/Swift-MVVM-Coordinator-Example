//
//  ViewController.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 3.12.2020.
//

import UIKit

final class InitialViewController: BaseViewController<InitialView, MainCoordinator> {
    
    override func linkInteractor() {
        super.linkInteractor()
        baseView?.delegate = self
    }
    
    override func configureApperance() {
        title = "Initial View"
    }
}

// InitialViewDelegate
extension InitialViewController: InitialViewDelegate {
    func initialView(_ view: InitialView, didTapLoginButton button: UIButton) {
        coordinator?.login()
    }
    
    func initialView(_ view: InitialView, didTapRegisterButton button: UIButton) {
        coordinator?.register()
    }
}
