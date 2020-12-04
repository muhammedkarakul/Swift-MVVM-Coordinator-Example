//
//  BaseView.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        linkInteractor()
        configureApperance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func linkInteractor() {
        
    }
    
    func configureApperance() {
        if #available(iOS 13.0, *) {
            backgroundColor = .systemBackground
        } else {
            backgroundColor = .white
        }
    }
    
    func prepareLayout() {
        
    }
}
