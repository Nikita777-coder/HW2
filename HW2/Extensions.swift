//
//  Extensions.swift
//  Menu-repeat
//
//  Created by Xiaomi on 28.10.2022.
//

import UIKit

extension CALayer {
    public func applyShadow() {
        
    }
}

extension UIView {
    enum PinSide {
        case Top, Bottom, Left, Right
    }
    @discardableResult // для игнорирования результата функции
    func pinLeft(to superview: UIView, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = leadingAnchor.constraint(
            equalTo: superview.leadingAnchor,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinLeft(to side: NSLayoutXAxisAnchor, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = leadingAnchor.constraint(
            equalTo: side,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        leadingAnchor.constraint(equalTo: side, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinRight(to superview: UIView, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = leadingAnchor.constraint(
            equalTo: superview.leadingAnchor,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        leadingAnchor.constraint(equalTo: superview.leadingAnchor, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinRight(to side: NSLayoutXAxisAnchor, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = leadingAnchor.constraint(
            equalTo: side,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        leadingAnchor.constraint(equalTo: side, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult // для игнорирования результата функции
    func pinBottom(to superview: UIView, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = bottomAnchor.constraint(
            equalTo: superview.bottomAnchor,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        bottomAnchor.constraint(equalTo: superview.bottomAnchor, constant: const * -1).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinBottom(to side: NSLayoutYAxisAnchor, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = bottomAnchor.constraint(
            equalTo: side,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        bottomAnchor.constraint(equalTo: side, constant: const * -1).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinTop(to superview: UIView, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = topAnchor.constraint(
            equalTo: superview.topAnchor,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        topAnchor.constraint(equalTo: superview.topAnchor, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinTop(to side: NSLayoutYAxisAnchor, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = topAnchor.constraint(
            equalTo: side,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false;
        topAnchor.constraint(equalTo: side, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinCenterX(to superview: UIView, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = centerXAnchor.constraint(
            equalTo: superview.centerXAnchor,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: superview.centerXAnchor, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinCenterX(to side: NSLayoutXAxisAnchor, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = centerXAnchor.constraint(
            equalTo: side,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = true
        centerXAnchor.constraint(equalTo: side, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinCenterY(to superview: UIView, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = centerYAnchor.constraint(
            equalTo: superview.centerYAnchor,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: superview.centerYAnchor, constant: const).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinCenterY(to side: NSLayoutYAxisAnchor, _ const: CGFloat = 0) -> NSLayoutConstraint {
        let constraint = centerYAnchor.constraint(
            equalTo: side,
            constant: const
        )
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: side, constant: const).isActive = true
        return constraint
    }
    
    func pinCenter(to superview: UIView) {
        pinCenterX(to: superview)
        pinCenterY(to: superview)
    }
    
    @discardableResult
    func pinWidth(to superview: UIView, _ mult: CGFloat = 1) -> NSLayoutConstraint {
        let constraint = widthAnchor.constraint(
            equalTo: superview.widthAnchor,
            constant: mult
        )
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: superview.widthAnchor, constant: mult).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinWidth(to side: NSLayoutDimension, _ mult: CGFloat = 1) -> NSLayoutConstraint {
        let constraint = widthAnchor.constraint(
            equalTo: side,
            constant: mult
        )
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalTo: side, constant: mult).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinHeight(to superview: UIView, _ mult: CGFloat = 1) -> NSLayoutConstraint {
        let constraint = heightAnchor.constraint(
            equalTo: superview.heightAnchor,
            constant: mult
        )
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalTo: superview.heightAnchor, constant: mult).isActive = true
        return constraint
    }
    
    @discardableResult
    func pinHeight(to side: NSLayoutDimension, _ mult: CGFloat = 1) -> NSLayoutConstraint {
        let constraint = heightAnchor.constraint(
            equalTo: side,
            constant: mult
        )
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalTo: side, constant: mult).isActive = true
        return constraint
    }
    
    @discardableResult // дальнейшие методы нужны для корректного присваения constarint const (mult)
    func setHeight(_ mult: CGFloat) -> NSLayoutConstraint {
        translatesAutoresizingMaskIntoConstraints = false
        let constraint = heightAnchor.constraint(equalToConstant: mult)
        heightAnchor.constraint(equalToConstant: mult).isActive = true
        return constraint
    }
    
    @discardableResult // дальнейшие методы нужны для корректного присваения constarint const (mult)
    func setWidth(_ mult: CGFloat) -> NSLayoutConstraint {
        let constraint = widthAnchor.constraint(equalToConstant: mult)
        translatesAutoresizingMaskIntoConstraints = false
        widthAnchor.constraint(equalToConstant: mult).isActive = true
        return constraint
    }
    
    func pin(to superview: UIView, _ sides: [PinSide: CGFloat]) {
        for side in sides {
            switch (side.key) {
            case .Bottom:
                pinBottom(to: superview, side.value)
            case .Top:
                pinTop(to: superview, side.value)
            case .Left:
                pinLeft(to: superview, side.value)
            case .Right:
                pinRight(to: superview, side.value)
            }
        }
    }
}
