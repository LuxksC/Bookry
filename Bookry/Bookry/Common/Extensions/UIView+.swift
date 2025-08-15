//
//  UIView+.swift
//  Bookry
//
//  Created by Lucas Souza on 14/08/25.
//

import UIKit

// MARK: - Constraint Anchors
extension UIView {
    func constraintToSuperview() {
        if let view = self.superview {
            self.translatesAutoresizingMaskIntoConstraints = false
            self
                .topAnchor(equalTo: view.topAnchor)
                .leadingAnchor(equalTo: view.leadingAnchor)
                .trailingAnchor(equalTo: view.trailingAnchor)
                .bottomAnchor(equalTo: view.bottomAnchor)
        }
    }

    @discardableResult
    func topAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = topAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func topAnchor(greaterThan anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = topAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func topAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = topAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func bottomAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = bottomAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func bottomAnchor(greaterThan anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = bottomAnchor.constraint(greaterThanOrEqualTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func bottomAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = bottomAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func leadingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = leadingAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func trailingAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = trailingAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func heightAnchor(equalTo height: CGFloat, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = heightAnchor.constraint(equalToConstant: height)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func heightAnchor(greaterThanOrEqualToConstant height: CGFloat, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = heightAnchor.constraint(greaterThanOrEqualToConstant: height)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func heightAnchor(equalTo nsLayoutDimension: NSLayoutDimension, multiplier: CGFloat = 1) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = heightAnchor.constraint(equalTo: nsLayoutDimension, multiplier: multiplier)
        constraint.isActive = true
        return self
    }

    @discardableResult
    func heightAnchor(lessThanOrEqualToConstant height: CGFloat, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = heightAnchor.constraint(lessThanOrEqualToConstant: height)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func widthAnchor(equalTo width: CGFloat, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = widthAnchor.constraint(equalToConstant: width)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func widthAnchor(equalTo nsLayoutDimension: NSLayoutDimension, multiplier: CGFloat = 1) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = widthAnchor.constraint(equalTo: nsLayoutDimension, multiplier: multiplier)
        constraint.isActive = true
        return self
    }

    @discardableResult
    func widthAnchor(greaterThanOrEqualToConstant width: CGFloat, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = widthAnchor.constraint(greaterThanOrEqualToConstant: width)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func widthAnchor(lessThanOrEqualToConstant width: CGFloat, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = widthAnchor.constraint(lessThanOrEqualToConstant: width)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func centerXAnchor(equalTo anchor: NSLayoutXAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = centerXAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func centerYAnchor(equalTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0, priority: UILayoutPriority = UILayoutPriority.required) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = centerYAnchor.constraint(equalTo: anchor, constant: constant)
        constraint.priority = priority
        constraint.isActive = true
        return self
    }

    @discardableResult
    func centerYAnchor(lessThanOrEqualTo anchor: NSLayoutYAxisAnchor, constant: CGFloat = 0) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        let constraint: NSLayoutConstraint = centerYAnchor.constraint(lessThanOrEqualTo: anchor, constant: constant)
        constraint.isActive = true
        return self
    }

    @discardableResult
    func constrainEdges(to view: UIView, inset: CGFloat = 0) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
            .topAnchor(equalTo: view.topAnchor, constant: inset)
            .bottomAnchor(equalTo: view.bottomAnchor, constant: -inset)
            .leadingAnchor(equalTo: view.leadingAnchor, constant: inset)
            .trailingAnchor(equalTo: view.trailingAnchor, constant: -inset)
    }

    @discardableResult
    func centered(on view: UIView) -> Self {
        self.translatesAutoresizingMaskIntoConstraints = false
        return self
            .centerXAnchor(equalTo: view.centerXAnchor)
            .centerYAnchor(equalTo: view.centerYAnchor)
    }
}
