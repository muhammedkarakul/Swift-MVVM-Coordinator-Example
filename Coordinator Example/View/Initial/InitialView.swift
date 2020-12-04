//
//  InitialView.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

protocol InitialViewDelegate: class {
    func initialView(_ view: InitialView, didTapLoginButton button: UIButton)
    func initialView(_ view: InitialView, didTapRegisterButton button: UIButton)
}

final class InitialView: BaseView {
    weak var delegate: InitialViewDelegate?
    
    private lazy var loginButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Login", for: .normal)
        return button
    }()
    
    private lazy var registerButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Register", for: .normal)
        return button
    }()
    
    override func linkInteractor() {
        super.linkInteractor()
        loginButton.addTarget(self, action: #selector(didTap(loginButton:)), for: .touchUpInside)
        registerButton.addTarget(self, action: #selector(didTap(registerButton:)), for: .touchUpInside)
    }
    
    override func prepareLayout() {
        super.prepareLayout()
        setupLoginButtonLayout()
        setupRegisterButtonLayout()
    }
    
    private func setupLoginButtonLayout() {
        addSubview(loginButton)
        loginButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.width.equalTo(200.0)
            make.height.equalTo(50.0)
        }
    }
    
    private func setupRegisterButtonLayout() {
        addSubview(registerButton)
        registerButton.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(loginButton.snp.bottom).offset(8.0)
            make.width.equalTo(200.0)
            make.height.equalTo(50.0)
        }
    }
}

// MARK: - Selectors
extension InitialView {
    @objc private func didTap(loginButton button: UIButton) {
        delegate?.initialView(self, didTapLoginButton: button)
    }
    
    @objc private func didTap(registerButton button: UIButton) {
        delegate?.initialView(self, didTapRegisterButton: button)
    }
}
