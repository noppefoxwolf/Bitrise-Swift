//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AppResponseItemModel: APIModel {

    public var avatarURL: String?

    public var isDisabled: Bool?

    public var isPublic: Bool?

    public var owner: V0OwnerAccountResponseModel?

    public var projectType: String?

    public var provider: String?

    public var repoOwner: String?

    public var repoSlug: String?

    public var repoURL: String?

    public var slug: String?

    public var status: Int?

    public var title: String?

    public init(avatarURL: String? = nil, isDisabled: Bool? = nil, isPublic: Bool? = nil, owner: V0OwnerAccountResponseModel? = nil, projectType: String? = nil, provider: String? = nil, repoOwner: String? = nil, repoSlug: String? = nil, repoURL: String? = nil, slug: String? = nil, status: Int? = nil, title: String? = nil) {
        self.avatarURL = avatarURL
        self.isDisabled = isDisabled
        self.isPublic = isPublic
        self.owner = owner
        self.projectType = projectType
        self.provider = provider
        self.repoOwner = repoOwner
        self.repoSlug = repoSlug
        self.repoURL = repoURL
        self.slug = slug
        self.status = status
        self.title = title
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        avatarURL = try container.decodeIfPresent("avatar_url")
        isDisabled = try container.decodeIfPresent("is_disabled")
        isPublic = try container.decodeIfPresent("is_public")
        owner = try container.decodeIfPresent("owner")
        projectType = try container.decodeIfPresent("project_type")
        provider = try container.decodeIfPresent("provider")
        repoOwner = try container.decodeIfPresent("repo_owner")
        repoSlug = try container.decodeIfPresent("repo_slug")
        repoURL = try container.decodeIfPresent("repo_url")
        slug = try container.decodeIfPresent("slug")
        status = try container.decodeIfPresent("status")
        title = try container.decodeIfPresent("title")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(avatarURL, forKey: "avatar_url")
        try container.encodeIfPresent(isDisabled, forKey: "is_disabled")
        try container.encodeIfPresent(isPublic, forKey: "is_public")
        try container.encodeIfPresent(owner, forKey: "owner")
        try container.encodeIfPresent(projectType, forKey: "project_type")
        try container.encodeIfPresent(provider, forKey: "provider")
        try container.encodeIfPresent(repoOwner, forKey: "repo_owner")
        try container.encodeIfPresent(repoSlug, forKey: "repo_slug")
        try container.encodeIfPresent(repoURL, forKey: "repo_url")
        try container.encodeIfPresent(slug, forKey: "slug")
        try container.encodeIfPresent(status, forKey: "status")
        try container.encodeIfPresent(title, forKey: "title")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AppResponseItemModel else { return false }
      guard self.avatarURL == object.avatarURL else { return false }
      guard self.isDisabled == object.isDisabled else { return false }
      guard self.isPublic == object.isPublic else { return false }
      guard self.owner == object.owner else { return false }
      guard self.projectType == object.projectType else { return false }
      guard self.provider == object.provider else { return false }
      guard self.repoOwner == object.repoOwner else { return false }
      guard self.repoSlug == object.repoSlug else { return false }
      guard self.repoURL == object.repoURL else { return false }
      guard self.slug == object.slug else { return false }
      guard self.status == object.status else { return false }
      guard self.title == object.title else { return false }
      return true
    }

    public static func == (lhs: V0AppResponseItemModel, rhs: V0AppResponseItemModel) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
