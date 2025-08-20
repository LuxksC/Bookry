//
//  HomeCoordinator.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import UIKit

protocol HomeCoordinatorDelegate: AnyObject {
    func onHomeCoordinatorCompletion(homeCoordinator: HomeCoordinator)
}

class HomeCoordinator: BaseCoordinator<UINavigationController> {
    weak var delegate: HomeCoordinatorDelegate?
    
    override func start() {
        showBooksView()
    }
}

// MARK: - Show Views
private extension HomeCoordinator {
    func showBooksView() {
        let viewModel = BooksViewModel()
        viewModel.navDelegate = self
        let view = BooksView(vm: viewModel)
        let controller = HostingController(rootView: view, viewModel: viewModel)
        
        presenter.setViewControllers([controller], animated: true)
    }
}

// MARK: - BooksViewModelNavDelegate
extension HomeCoordinator: BooksNavDelegate {
    func onBooksLogoTapped() {
        print("Logo Tapped")
    }
}


