//
//  UIViewDesignable.swift
//  FirestoreExample
//
//  Created by CentrumGuy on 09/21/19.
//  Copyright © 2019 CentrumGuy. All rights reserved.
//

import UIKit

@IBDesignable
class UIViewDesignable: UIView {
    var endsEditingOnTap: Bool = false
    
    // MARK: - Corner Radius
    
    @IBInspectable public var cornerRadius: CGFloat = 0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }
    
    // MARK: - Shadow
    
    @IBInspectable public var shadowOpacity: Float = 0 {
        didSet {
            layer.shadowOpacity = shadowOpacity
        }
    }
    
    @IBInspectable public var shadowColor: UIColor = UIColor.black {
        didSet {
            layer.shadowColor = shadowColor.cgColor
        }
    }
    
    @IBInspectable public var shadowRadius: CGFloat = 5 {
        didSet {
            layer.shadowRadius = shadowRadius
        }
    }
    
    @IBInspectable public var shadowOffset: CGPoint = CGPoint(x: 0, y: 0) {
        didSet {
            layer.shadowOffset = CGSize(width: shadowOffset.x, height: shadowOffset.y)
        }
    }
    
    
    
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        if endsEditingOnTap {
            endEditing(true)
        }
    }
}
