//
//  LoginView.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

final class LoginView: BaseView {
    private lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "LOGIN"
        return label
    }()
    
    override func prepareLayout() {
        super.prepareLayout()
        setupTitleLabelLayout()
    }
    
    private func setupTitleLabelLayout() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
    }
}
