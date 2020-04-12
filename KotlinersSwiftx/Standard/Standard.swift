import Foundation

public protocol StandardFunctionProtocol { }
extension NSObject: StandardFunctionProtocol { }

public func extract<R>(block: () -> R) -> R {
    return block()
}

public extension StandardFunctionProtocol {
    func takeIf(_ predicate: (Self) -> Bool) -> Self? {
        if(predicate(self)) {
            return self
        } else {
            return nil
        }
    }

    func takeUnless(_ predicate: (Self) -> Bool) -> Self? {
        if(!predicate(self)) {
            return self
        } else {
            return nil
        }
    }
}

