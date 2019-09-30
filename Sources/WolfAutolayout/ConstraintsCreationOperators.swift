//
//  ConstraintsCreationOperators.swift
//  WolfAutolayout
//
//  Created by Wolf McNally on 10/2/18.
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

import WolfCore
#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

/// Creates a `Constraints` object from an array of layout constraints,
/// invalidates the constraints on the left-hand side, and assigns
/// the resulting constraints to the left-hand side.
///
/// This is a specialization of the Invalidate-And-Assign operator.
public func ◊= (lhs: inout Constraints?, rhs: [NSLayoutConstraint]) {
    lhs?.invalidate()
    lhs = Constraints(rhs)
}

prefix operator ◊

/// Creates a `Constraints` object from an array of layout constraints.
@discardableResult public prefix func ◊(rhs: [NSLayoutConstraint]) -> Constraints {
    return Constraints(rhs)
}
