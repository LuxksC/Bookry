//
//  HomeCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import UIKit

class HomeCoordinator: BaseCoordinator<UINavigationController> {
    override func start() {
        showBooksView()
    }
}

// MARK: - Show Views
private extension HomeCoordinator {
    func showBooksView() {
        let viewModel = BooksViewModel()
        let view = BooksView(vm: viewModel)
        let controller = UIHostingController(rootView: view)
        
        presenter.setViewControllers([controller], animated: true)
    }
}


