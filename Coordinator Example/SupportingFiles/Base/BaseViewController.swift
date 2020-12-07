//
//  BaseViewController.swift
//  Coordinator Example
//
//  Created by Muhammed Karakul on 4.12.2020.
//

import UIKit

class BaseViewController<T: BaseView, C: Coordinator>: UIViewController {
    
    weak var coordinator: C?
    
    var baseView: T? {
        set {
            view = newValue
        }
        get {
            view as? T
        }
    }

    override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: Bundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        baseView = T()
        linkInteractor()
        configureApperance()
        prepareLayout()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        coordinator?.parentCoordinator?.didFinishChild(coordinator)
    }
    
    func linkInteractor() {
        
    }
    
    func configureApperance() {
        
    }
    
    func prepareLayout() {
        
    }
}
