//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AppWebhookCreateParams: APIModel {

    public var events: String?

    public var headers: String?

    public var secret: String?

    public var url: String?

    public init(events: String? = nil, headers: String? = nil, secret: String? = nil, url: String? = nil) {
        self.events = events
        self.headers = headers
        self.secret = secret
        self.url = url
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        events = try container.decodeIfPresent("events")
        headers = try container.decodeIfPresent("headers")
        secret = try container.decodeIfPresent("secret")
        url = try container.decodeIfPresent("url")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(events, forKey: "events")
        try container.encodeIfPresent(headers, forKey: "headers")
        try container.encodeIfPresent(secret, forKey: "secret")
        try container.encodeIfPresent(url, forKey: "url")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppWebhookCreateParams else { return false }
      guard self.events == object.events else { return false }
      guard self.headers == object.headers else { return false }
      guard self.secret == object.secret else { return false }
      guard self.url == object.url else { return false }
      return true
    }

    public static func == (lhs: V0AppWebhookCreateParams, rhs: V0AppWebhookCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
