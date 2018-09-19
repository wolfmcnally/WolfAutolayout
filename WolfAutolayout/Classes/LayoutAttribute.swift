//
//  NSLayoutConstraint.Attribute.swift
//  WolfAutolayout
//
//  Created by Wolf McNally on 6/25/17.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.

#if canImport(AppKit)
import AppKit
#elseif canImport(UIKit)
import UIKit
#endif

#if os(macOS)
    public func string(forAttribute attribute: NSLayoutConstraint.Attribute) -> String {
        let result: String
        switch attribute {
        case .left:
            result = "left"
        case .right:
            result = "right"
        case .top:
            result = "top"
        case .bottom:
            result = "bottom"
        case .leading:
            result = "leading"
        case .trailing:
            result = "trailing"
        case .width:
            result = "width"
        case .height:
            result = "height"
        case .centerX:
            result = "centerX"
        case .centerY:
            result = "centerY"
        case .lastBaseline:
            result = "lastBaseline"
        case .firstBaseline:
            result = "firstBaseline"
        case .notAnAttribute:
            result = "notAnAttribute"
        }
        return result
    }
#else
    public func string(forAttribute attribute: NSLayoutConstraint.Attribute) -> String {
        let result: String
        switch attribute {
        case .left:
            result = "left"
        case .right:
            result = "right"
        case .top:
            result = "top"
        case .bottom:
            result = "bottom"
        case .leading:
            result = "leading"
        case .trailing:
            result = "trailing"
        case .width:
            result = "width"
        case .height:
            result = "height"
        case .centerX:
            result = "centerX"
        case .centerY:
            result = "centerY"
        case .firstBaseline:
            result = "firstBaseline"
        case .lastBaseline:
            result = "lastBaseline"
        case .notAnAttribute:
            result = "notAnAttribute"
        case .leftMargin:
            result = "leftMargin"
        case .rightMargin:
            result = "rightMargin"
        case .topMargin:
            result = "topMargin"
        case .bottomMargin:
            result = "bottomMargin"
        case .leadingMargin:
            result = "leadingMargin"
        case .trailingMargin:
            result = "trailingMargin"
        case .centerXWithinMargins:
            result = "centerXWithinMargins"
        case .centerYWithinMargins:
            result = "centerYWithinMargins"
        }
        return result
    }
#endif
