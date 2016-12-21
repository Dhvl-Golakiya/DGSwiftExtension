//
//  NSDictionaryExtension.swift
//  SwiftExtension
//
//  Created by Dhvl Golakiya on 04/04/16.
//  Copyright © 2016 Dhvl Golakiya. All rights reserved.
//

import Foundation
import UIKit

extension NSDictionary {
    
    //  Convert NSDictionary to NSData
    public var toNSData : Data! {
        do {
            return try JSONSerialization.data(withJSONObject: self, options: .prettyPrinted)          // success ...
        } catch {
            // failure
            print("Fetch failed: \((error as NSError).localizedDescription)")
        }
        return Data()
    }
    
    //  Check key is exist in NSDictionary or not
    public func has(_ key: Key) -> Bool {
        return object(forKey: key) != nil
    }

}
