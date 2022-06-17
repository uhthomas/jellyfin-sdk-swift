//
// NotificationOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NotificationOptions: Codable, JSONEncodable, Hashable {

    public var options: [NotificationOption]?

    public init(options: [NotificationOption]? = nil) {
        self.options = options
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case options = "Options"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(options, forKey: .options)
    }
}
