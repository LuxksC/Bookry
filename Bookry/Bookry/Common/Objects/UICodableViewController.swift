//
//  UICodableViewController.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

class UICodableViewController<CodableView>: UIViewController where CodableView: UICodableView {
    private(set) var mainView: CodableView
    
    init(mainView: CodableView) {
        self.mainView = mainView
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = mainView
    }
}
