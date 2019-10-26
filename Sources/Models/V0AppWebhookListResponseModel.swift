//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AppWebhookListResponseModel: APIModel {

    public var data: [V0AppWebhookResponseItemModel]?

    public var paging: V0PagingResponseModel?

    public init(data: [V0AppWebhookResponseItemModel]? = nil, paging: V0PagingResponseModel? = nil) {
        self.data = data
        self.paging = paging
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        data = try container.decodeArrayIfPresent("data")
        paging = try container.decodeIfPresent("paging")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(data, forKey: "data")
        try container.encodeIfPresent(paging, forKey: "paging")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppWebhookListResponseModel else { return false }
      guard self.data == object.data else { return false }
      guard self.paging == object.paging else { return false }
      return true
    }

    public static func == (lhs: V0AppWebhookListResponseModel, rhs: V0AppWebhookListResponseModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
