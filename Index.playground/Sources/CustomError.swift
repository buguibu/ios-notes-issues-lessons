import Foundation

@objc public enum CustomError: Int, Error, CustomNSError, LocalizedError, CustomStringConvertible {
    case demo
    case unknown

    public var localizedDescription: String {
        var localizedDesc = ""
        switch self {
        case .demo:
            localizedDesc = "This is a demo."
        case .unknown:
            localizedDesc = "Unknown error."
        }
        return description + ": " + localizedDesc
    }

    // MARK: - LocalizedError
    public var errorDescription: String? {
        return localizedDescription
    }

    // MARK: - CustomNSError
    public static var errorDomain = "Magic string"
    public var errorCode: Int {
        return self.rawValue
    }
    public var errorUserInfo: [String: Any] {
        return [
            NSLocalizedDescriptionKey: localizedDescription
        ]
    }

    // MARK: - CustomStringConvertible
    public var description: String {
        var desc = ""
        switch self {
            case .demo: desc = "demo"
            case .unknown: desc = "unknown"
        }
        return ((#file).split(separator: "/").last ?? "") + ": " + desc
    }


}
