//
// Generated by SwagGen
// https://github.com/yonaskolb/SwagGen
//

import Foundation

public class V0AndroidKeystoreFileUploadParams: APIModel {

    public var alias: String?

    public var password: String?

    public var privateKeyPassword: String?

    public var uploadFileName: String?

    public var uploadFileSize: Int?

    public init(alias: String? = nil, password: String? = nil, privateKeyPassword: String? = nil, uploadFileName: String? = nil, uploadFileSize: Int? = nil) {
        self.alias = alias
        self.password = password
        self.privateKeyPassword = privateKeyPassword
        self.uploadFileName = uploadFileName
        self.uploadFileSize = uploadFileSize
    }

    public required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: StringCodingKey.self)

        alias = try container.decodeIfPresent("alias")
        password = try container.decodeIfPresent("password")
        privateKeyPassword = try container.decodeIfPresent("private_key_password")
        uploadFileName = try container.decodeIfPresent("upload_file_name")
        uploadFileSize = try container.decodeIfPresent("upload_file_size")
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: StringCodingKey.self)

        try container.encodeIfPresent(alias, forKey: "alias")
        try container.encodeIfPresent(password, forKey: "password")
        try container.encodeIfPresent(privateKeyPassword, forKey: "private_key_password")
        try container.encodeIfPresent(uploadFileName, forKey: "upload_file_name")
        try container.encodeIfPresent(uploadFileSize, forKey: "upload_file_size")
    }

    public func isEqual(to object: Any?) -> Bool {
      guard let object = object as? V0AndroidKeystoreFileUploadParams else { return false }
      guard self.alias == object.alias else { return false }
      guard self.password == object.password else { return false }
      guard self.privateKeyPassword == object.privateKeyPassword else { return false }
      guard self.uploadFileName == object.uploadFileName else { return false }
      guard self.uploadFileSize == object.uploadFileSize else { return false }
      return true
    }

    public static func == (lhs: V0AndroidKeystoreFileUploadParams, rhs: V0AndroidKeystoreFileUploadParams) -> Bool {
        return lhs.isEqual(to: rhs)
    }
}
