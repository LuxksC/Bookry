//
//  BaseViewModel.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import UIKit

class BaseViewModel {
    /// Facilitates the interaction between SwiftUI and UIKit views
    /// The weak is needed because HostingController has acces to BaseViewModel and BaseViewModel has acces to HostingController
    weak var hostingController: UIViewController?
}
