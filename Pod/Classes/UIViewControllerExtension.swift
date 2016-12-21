//
//  UIViewControllerExtension.swift
//  SwiftExtension
//
//  Created by Dhvl Golakiya on 04/04/16.
//  Copyright © 2016 Dhvl Golakiya. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    //  Get class name
    public var className: String {
        return NSStringFromClass(self.classForCoder)
    }
}

public func getScreenWidth() -> CGFloat {
    let screenBound : CGRect = UIScreen.main.bounds
    return screenBound.size.width
}

public func getScreenHeight() -> CGFloat {
    let screenBound : CGRect = UIScreen.main.bounds
    return screenBound.size.height
}


