//
//  Apply.swift
//  KotlinersSwiftx
//
//  Created by 石井直貴 on 2020/04/11.
//  Copyright © 2020 iiinaiii. All rights reserved.
//

import Foundation

public protocol ScopeFunctionProtocol { }
extension NSObject: ScopeFunctionProtocol { }

public extension ScopeFunctionProtocol {
    func `let`<R>(_ block: (Self) -> R) -> R {
        return block(self)
    }

    func also(_ block: (Self) -> Void) -> Self {
        block(self)
        return self
    }
}
