//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AvatarCandidateCreateParams: APIModel {

    public var filename: String?

    public var filesize: Int?

    public init(filename: String? = nil, filesize: Int? = nil) {
        self.filename = filename
        self.filesize = filesize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        filename = try container.decodeIfPresent("filename")
        filesize = try container.decodeIfPresent("filesize")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(filename, forKey: "filename")
        try container.encodeIfPresent(filesize, forKey: "filesize")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AvatarCandidateCreateParams else { return false }
      guard self.filename == object.filename else { return false }
      guard self.filesize == object.filesize else { return false }
      return true
    }

    public static func == (lhs: V0AvatarCandidateCreateParams, rhs: V0AvatarCandidateCreateParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
