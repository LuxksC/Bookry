//
//  BaseCoordinator.swift
//  Bookry
//
//  Created by Lucas Souza on 13/08/25.
//

import Foundation
import UIKit

/// Base clas from which all Coordinators will inherit
class BaseCoordinator<ControllerType> where ControllerType: UIViewController {
    let id = UUID()
    
    private(set) var childCoordinators: [UUID : Any] = [UUID: Any]()
    
    /// Object that will present the views
    var presenter: ControllerType
    
    init(presenter: ControllerType) {
        self.presenter = presenter
    }
    
    /// Method that must be implemented by all Coordinators
    /// This method will be called when a Coordinator is created
    /// It will be responsable for putting the view inside the presenter
    func start() {
        preconditionFailure("Coordinator start mehtod not implemented")
    }
}

// MARK: - Child Coordinator Management
extension BaseCoordinator {
    /// Add a Coordinator to child coordinators list
    func store<U: UIViewController>(childCoordinator: BaseCoordinator<U>) {
        let isAlreadyStored = coordinatorExists(coordinatorId: childCoordinator.id)
        
        /// Avoid duplicates
        if !isAlreadyStored {
            childCoordinators[childCoordinator.id] = childCoordinator
        }
    }
    
    /// Remove a Coordinator from child coordinators list
    func remove<U: UIViewController>(childCoordinator: BaseCoordinator<U>) {
        let isCoordinatorStored = coordinatorExists(coordinatorId: childCoordinator.id)
        
        if isCoordinatorStored {
            childCoordinators[childCoordinator.id] = nil
        }
    }
    
    /// Clean child coordinators list
    func removeAll() {
        childCoordinators = [UUID: Any]()
    }
    
    /// Get a specific child coordinator
    func getChildCoordinator<T>(forKey key: UUID) -> T? {
        return childCoordinators.first(where: { $0.key == key})?.value as? T
    }
    
    private func coordinatorExists(coordinatorId: UUID) -> Bool {
        let coordinatorExists = childCoordinators.contains(where: { (key, value) -> Bool in
            return key == coordinatorId})
        return coordinatorExists
    }
}
