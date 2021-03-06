//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0BuildRequestUpdateParams: APIModel {

    public var isApproved: Bool?

    public init(isApproved: Bool? = nil) {
        self.isApproved = isApproved
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        isApproved = try container.decodeIfPresent("is_approved")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(isApproved, forKey: "is_approved")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0BuildRequestUpdateParams else { return false }
      guard self.isApproved == object.isApproved else { return false }
      return true
    }

    public static func == (lhs: V0BuildRequestUpdateParams, rhs: V0BuildRequestUpdateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
