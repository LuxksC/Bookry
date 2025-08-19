//
//  BooksViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI

protocol BooksViewModelable: ObservableObject {
    var navDelegate: BooksNavDelegate? { get set }
    func didTapLogout()
}

protocol BooksNavDelegate: AnyObject {
    func onBooksLogoutTapped()
}

class BooksViewModel: BaseViewModel, BooksViewModelable {
    
    weak var navDelegate: BooksNavDelegate?
    
    func didTapLogout() {
        print("didTapLogout called")
        navDelegate?.onBooksLogoutTapped()
    }
}
