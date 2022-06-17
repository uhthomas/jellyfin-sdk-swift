//
// ProfileCondition.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct ProfileCondition: Codable, JSONEncodable, Hashable {

    public var condition: ProfileConditionType?
    public var property: ProfileConditionValue?
    public var value: String?
    public var isRequired: Bool?

    public init(condition: ProfileConditionType? = nil, property: ProfileConditionValue? = nil, value: String? = nil, isRequired: Bool? = nil) {
        self.condition = condition
        self.property = property
        self.value = value
        self.isRequired = isRequired
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case condition = "Condition"
        case property = "Property"
        case value = "Value"
        case isRequired = "IsRequired"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(condition, forKey: .condition)
        try encoderContainer.encodeIfPresent(property, forKey: .property)
        try encoderContainer.encodeIfPresent(value, forKey: .value)
        try encoderContainer.encodeIfPresent(isRequired, forKey: .isRequired)
    }
}
