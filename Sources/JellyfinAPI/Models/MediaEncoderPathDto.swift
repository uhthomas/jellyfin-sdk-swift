//
// MediaEncoderPathDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Media Encoder Path Dto. */
public struct MediaEncoderPathDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets media encoder path. */
    public var path: String?
    /** Gets or sets media encoder path type. */
    public var pathType: String?

    public init(path: String? = nil, pathType: String? = nil) {
        self.path = path
        self.pathType = pathType
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case path = "Path"
        case pathType = "PathType"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(path, forKey: .path)
        try encoderContainer.encodeIfPresent(pathType, forKey: .pathType)
    }
}
