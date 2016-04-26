//
//  TIHexColor.swift
//
//  Created by ichise on 2016/04/25.
//  Copyright © 2016年 ichise. All rights reserved.
//

public extension UIColor {
    
    class func colorWithHexString(baseHexString : NSString, alpha : CGFloat) -> UIColor {
        let hexString = baseHexString.stringByReplacingOccurrencesOfString("#", withString: "")
        let scanner = NSScanner(string: hexString as String)
        var color: UInt32 = 0
        
        if scanner.scanHexInt(&color) {
            let r = CGFloat((color & 0xFF0000) >> 16) / 255.0
            let g = CGFloat((color & 0x00FF00) >> 8) / 255.0
            let b = CGFloat(color & 0x0000FF) / 255.0
            return UIColor(red:r, green:g, blue:b, alpha:alpha)
        } else {
            // invalid hex string
            return UIColor.whiteColor();
        }
    }
}
