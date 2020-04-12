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

    func with<T, R>(_ receiver: T? = nil, block: (T?) -> R) -> R {
        return block(receiver)
    }
}
