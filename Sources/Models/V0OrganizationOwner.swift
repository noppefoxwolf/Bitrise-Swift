//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0OrganizationOwner: APIModel {

    public var email: String?

    public var slug: String?

    public var username: String?

    public init(email: String? = nil, slug: String? = nil, username: String? = nil) {
        self.email = email
        self.slug = slug
        self.username = username
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        email = try container.decodeIfPresent("email")
        slug = try container.decodeIfPresent("slug")
        username = try container.decodeIfPresent("username")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(email, forKey: "email")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(username, forKey: "username")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0OrganizationOwner else { return false }
      guard self.email == object.email else { return false }
      guard self.slug == object.slug else { return false }
      guard self.username == object.username else { return false }
      return true
    }

    public static func == (lhs: V0OrganizationOwner, rhs: V0OrganizationOwner) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
