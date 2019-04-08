//
//  Constraints.swift
//  WolfAutolayout
//
//  Created by Wolf McNally on 7/7/15.
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

#if canImport(UIKit)
import UIKit
#elseif canImport(AppKit)
import AppKit
#endif

import WolfCore

public final class Constraints: Invalidatable {
    public private(set) var constraints: [NSLayoutConstraint]
    private let identifier: String?

    @discardableResult public init(activate: Bool = true, identifier: String? = nil, _ constraints: [NSLayoutConstraint]) {
        self.constraints = constraints
        self.identifier = identifier
        if activate {
            NSLayoutConstraint.activate(constraints)
        }
    }

    @discardableResult public convenience init(activate: Bool = true, identifier: String? = nil, _ constraints: NSLayoutConstraint...) {
        self.init(activate: activate, identifier: identifier, constraints)
    }

    public var first: NSLayoutConstraint! {
        assert(constraints.count == 1, "Attempting to perform single-constraint operation on Constraints not containing exactly one NSLayoutConstrait.")
        return constraints.first
    }

    public var constant: CGFloat {
        get { return first.constant }
        set { first.constant = newValue }
    }

    public func append(_ constraints: Constraints) {
        self.constraints.append(contentsOf: constraints.constraints)
    }

    public func replace(with constraints: @autoclosure () -> Constraints) {
        invalidate()
        self.constraints = constraints().constraints
    }

    public func activate() {
        NSLayoutConstraint.activate(constraints)
    }

    public func deactivate() {
        NSLayoutConstraint.deactivate(constraints)
    }

    public func invalidate() {
        deactivate()
        constraints.removeAll()
    }
}
