//
// Created by Dhvl Golakiya on 02/04/16.
// Copyright (c) 2016 Dhvl Golakiya. All rights reserved.
//

import Foundation
import UIKit

extension UILabel {
    
    // Get Estimated size
    public func getEstimatedSize(_ width: CGFloat = CGFloat.greatestFiniteMagnitude, height: CGFloat = CGFloat.greatestFiniteMagnitude) -> CGSize {
        return sizeThatFits(CGSize(width: width, height: height))
    }
    
    // Get Estimated Height
    public func getEstimatedHeight() -> CGFloat {
        return sizeThatFits(CGSize(width: self.getWidth, height: CGFloat.greatestFiniteMagnitude)).height
    }
    
    // Get Estimated width
    public func getEstimatedWidth() -> CGFloat {
        return sizeThatFits(CGSize(width: CGFloat.greatestFiniteMagnitude, height: self.getHeight)).width
    }
    
    // Set Label Height
    public func fitHeight() {
        self.setHeight(getEstimatedHeight())
    }
    
    //  Set Label width
    public func fitWidth() {
        self.setWidth(getEstimatedWidth())
    }
    
    //  Sel Label SIze
    public func fitSize() {
        self.fitWidth()
        self.fitHeight()
        sizeToFit()
    }
    
    //    //  Get line text in Array of String
    public func getLinesArrayOfString() -> [String] {
        
        let text:NSString = self.text! as NSString
        let font:UIFont = self.font
        let rect:CGRect = self.frame
        self.lineBreakMode = .byWordWrapping
        let myFont:CTFont = CTFontCreateWithName(font.fontName as CFString?, font.pointSize, nil)
        let attStr:NSMutableAttributedString = NSMutableAttributedString(string: text as String)
        attStr.addAttribute(String(kCTFontAttributeName), value:myFont, range: NSMakeRange(0, attStr.length))
        let frameSetter:CTFramesetter = CTFramesetterCreateWithAttributedString(attStr as CFAttributedString)
        let path:CGMutablePath = CGMutablePath()
        //        path.move(to: CGPoint (x: getScreenWidth() - 40, y: 100000))
        path.addRect(CGRect(x: 0, y: 0, width: getScreenWidth() - 30 , height: 100000))
        //        CGPathAddRect(path, nil, CGRect(x: 0, y: 0, width: getScreenWidth() - 40 , height: 100000))
        let frame:CTFrame = CTFramesetterCreateFrame(frameSetter, CFRangeMake(0, 0), path, nil)
        let lines = CTFrameGetLines(frame) as NSArray
        var linesArray = [String]()
        
        for line in lines {
            let lineRange = CTLineGetStringRange(line as! CTLine)
            let range:NSRange = NSMakeRange(lineRange.location, lineRange.length)
            let lineString = text.substring(with: range)
            linesArray.append(lineString as String)
        }
        return linesArray
    }
    
    //  Get specif line text
    public func getLinesArrayOfString(_ lineNumber : Int) -> String {
        let lines = self.getLinesArrayOfString()
        if lineNumber <= lines.count {
            return lines[lineNumber]
        }
        return ""
    }
}
