//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0ProvisionProfileUploadParams: APIModel {

    public var uploadFileName: String?

    public var uploadFileSize: Int?

    public init(uploadFileName: String? = nil, uploadFileSize: Int? = nil) {
        self.uploadFileName = uploadFileName
        self.uploadFileSize = uploadFileSize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        uploadFileName = try container.decodeIfPresent("upload_file_name")
        uploadFileSize = try container.decodeIfPresent("upload_file_size")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(uploadFileName, forKey: "upload_file_name")
        try container.encodeIfPresent(uploadFileSize, forKey: "upload_file_size")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0ProvisionProfileUploadParams else { return false }
      guard self.uploadFileName == object.uploadFileName else { return false }
      guard self.uploadFileSize == object.uploadFileSize else { return false }
      return true
    }

    public static func == (lhs: V0ProvisionProfileUploadParams, rhs: V0ProvisionProfileUploadParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
