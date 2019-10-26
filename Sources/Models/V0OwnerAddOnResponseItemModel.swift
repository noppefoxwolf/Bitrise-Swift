//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0OwnerAddOnResponseItemModel: APIModel {

    public var apps: [V0AddOnAppResponseItemModel]?

    public var documentationURL: String?

    public var hasUi: Bool?

    public var icon: String?

    public var id: String?

    public var summary: String?

    public var title: String?

    public init(apps: [V0AddOnAppResponseItemModel]? = nil, documentationURL: String? = nil, hasUi: Bool? = nil, icon: String? = nil, id: String? = nil, summary: String? = nil, title: String? = nil) {
        self.apps = apps
        self.documentationURL = documentationURL
        self.hasUi = hasUi
        self.icon = icon
        self.id = id
        self.summary = summary
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        apps = try container.decodeArrayIfPresent("apps")
        documentationURL = try container.decodeIfPresent("documentation_url")
        hasUi = try container.decodeIfPresent("has_ui")
        icon = try container.decodeIfPresent("icon")
        id = try container.decodeIfPresent("id")
        summary = try container.decodeIfPresent("summary")
        title = try container.decodeIfPresent("title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(apps, forKey: "apps")
        try container.encodeIfPresent(documentationURL, forKey: "documentation_url")
        try container.encodeIfPresent(hasUi, forKey: "has_ui")
        try container.encodeIfPresent(icon, forKey: "icon")
        try container.encodeIfPresent(id, forKey: "id")
        try container.encodeIfPresent(summary, forKey: "summary")
        try container.encodeIfPresent(title, forKey: "title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0OwnerAddOnResponseItemModel else { return false }
      guard self.apps == object.apps else { return false }
      guard self.documentationURL == object.documentationURL else { return false }
      guard self.hasUi == object.hasUi else { return false }
      guard self.icon == object.icon else { return false }
      guard self.id == object.id else { return false }
      guard self.summary == object.summary else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: V0OwnerAddOnResponseItemModel, rhs: V0OwnerAddOnResponseItemModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
