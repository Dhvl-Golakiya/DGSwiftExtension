//
// Created by Dhvl Golakiya on 02/04/16.
// Copyright (c) 2016 Dhvl Golakiya. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    //  Get End X point of view
    public var endX : CGFloat {
        return frame.origin.x + frame.width
    }
    
    //  Get End Y point of view
    public var endY : CGFloat {
        return frame.origin.y + frame.height
    }
    
    //  Get Origin.x
    public var startX : CGFloat {
        return frame.origin.x
    }
    
    //  Get Origin.y
    public var startY : CGFloat {
        return frame.origin.y
    }
    
    //  Get width of View
    public var getWidth : CGFloat {
        return frame.width
    }
    
    //  Get height of view
    public var getHeight : CGFloat {
        return frame.height
    }
    
    //  Set Origin.x
    public func setStartX(_ x : CGFloat) {
        self.frame.origin.x = x
    }
    
    //  Set Origin.y
    public func setStartY( _ y : CGFloat) {
        self.frame.origin.y = y
    }
    
    //  Set view width
    public func setWidth(_ width : CGFloat) {
        self.frame.size = CGSize(width: width, height: self.getHeight)
    }
    
    //  Set view height
    public func setHeight( _ height : CGFloat) {
        self.frame.size = CGSize(width: self.getWidth, height: height)
    }
    
    //  Set Center
    public func setCenter(_ x : CGFloat, y : CGFloat) {
        self.center = CGPoint(x : x,y: y)
    }
    
    //  Get center
    public func getCenter() -> CGPoint {
        return self.center
    }
    
    // Set center.x
    public func setCenterX(_ x: CGFloat) {
        self.center = CGPoint(x: x, y: self.getCenterY())
    }
    
    //  Get center.x
    public func getCenterX() -> CGFloat {
        return self.center.x
    }
    
    //  Set center.y
    public func setCenterY(_ y : CGFloat)  {
        self.center = CGPoint(x : self.getCenterX(), y : y)
    }
    
    //  Get center.y
    public func getCenterY() -> CGFloat {
        return self.center.y
    }
    
    //  Get Parent View controller
    public var parentViewController: UIViewController? {
        var parentResponder: UIResponder? = self
        while parentResponder != nil {
            parentResponder = parentResponder!.next
            if parentResponder is UIViewController {
                return parentResponder as! UIViewController!
            }
        }
        return nil
    }
    
    //  Apply plain shadow to view
    public func applyPlainShadow() {
        let layer = self.layer
        
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize(width: 0, height: 3)
        layer.shadowOpacity = 0.5
        layer.shadowRadius = 1.0
    }
    
    //  Apply boarder to view
    public func applyBorder() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.gray.cgColor
    }
    
    //  Apply corner radius
    public func applyCornerRadius(_ corenrRadius : CGFloat , mask : Bool) {
        self.layer.masksToBounds = mask
        self.layer.cornerRadius = corenrRadius
    }
    
    //  Add only bottom border
    public func applyBottomBorder() {
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.gray.cgColor
    }
    
    //  Add Top Border
    public func addTopBorderWithColor(_ color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: 0, width: self.getWidth, height: width)
        self.layer.addSublayer(border)
    }
    
    //  Add Right Border
    public func addRightBorderWithColor(_ color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: self.getWidth - width, y: 0, width: width, height: self.getHeight)
        self.layer.addSublayer(border)
    }
    
    //  Add Bottom Border
    public func addBottomBorderWithColor(_ color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: self.getHeight - width, width: self.getWidth, height: width)
        self.layer.addSublayer(border)
    }
    
    //  Add Left Border
    public func addLeftBorderWithColor(_ color: UIColor, width: CGFloat) {
        let border = CALayer()
        border.backgroundColor = color.cgColor
        border.frame = CGRect(x: 0, y: 0, width: width, height: self.getHeight)
        self.layer.addSublayer(border)
    }
}
