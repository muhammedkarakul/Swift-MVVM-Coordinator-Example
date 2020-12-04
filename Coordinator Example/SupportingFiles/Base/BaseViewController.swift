//
//  BaseViewController.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

class BaseViewController<T: BaseView>: UIViewController {
    
    weak var coordinator: MainCoordinator?
    
    var baseView: T? {
        view as? T
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        view = T()
        
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
        
    }
    
    func prepareLayout() {
        
    }
}
