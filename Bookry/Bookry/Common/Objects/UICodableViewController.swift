//
//  UICodableViewController.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

class UICodableViewController<CodableView, VM>: UIViewController where CodableView: UICodableView {
    private(set) var mainView: CodableView
    private(set) var vm: VM
    
    init(mainView: CodableView, viewModel: VM) {
        self.mainView = mainView
        self.vm = viewModel
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func loadView() {
        view = mainView
    }
}
