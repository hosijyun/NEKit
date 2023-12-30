import Foundation
import Network

public typealias Port = Network.NWEndpoint.Port

extension Port {
    public var value: UInt16 {
        return self.rawValue
    }
    public var valueInNetworkOrder: UInt16 {
        return NSSwapHostShortToBig(self.rawValue)
    }

    public init(portInNetworkOrder: UInt16) {
        self.init(integerLiteral: NSSwapBigShortToHost(portInNetworkOrder))
    }

    public init(port: UInt16) {
        self.init(integerLiteral: port)
    }

    public init(bytesInNetworkOrder: UnsafeRawPointer) {
        self.init(portInNetworkOrder: bytesInNetworkOrder.load(as: UInt16.self))
    }

    public func withUnsafeBufferPointer<T>(_ block: (UnsafeRawBufferPointer) -> T) -> T {
        var port = NSSwapHostShortToBig(self.rawValue)
        return withUnsafeBytes(of: &port) {
            return block($0)
        }
    }
}

extension Port: CustomStringConvertible {
    public var description: String {
        return "<Port \(self.rawValue)>"
    }
}