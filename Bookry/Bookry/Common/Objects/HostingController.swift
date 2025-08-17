//
//  HostingController.swift
//  Bookry
//
//  Created by Lucas de Castro Souza on 17/08/25.
//

import SwiftUI
import UIKit

class HostingController<Content: View, VM: BaseViewModel>: UIHostingController<Content> {
    var viewModel: VM
    
    init(rootView: Content, viewModel: VM) {
        self.viewModel = viewModel
        super.init(rootView: rootView)
        viewModel.hostingController = self
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
