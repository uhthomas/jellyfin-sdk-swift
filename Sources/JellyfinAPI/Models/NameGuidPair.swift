//
// NameGuidPair.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct NameGuidPair: Codable, Hashable {

    public var name: String?
    public var id: String?

    public init(name: String? = nil, id: String? = nil) {
        self.name = name
        self.id = id
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case id = "Id"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
    }
}