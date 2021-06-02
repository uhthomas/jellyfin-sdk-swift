//
// ProfileConditionType.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public enum ProfileConditionType: String, Codable, CaseIterable {
    case equals = "Equals"
    case notEquals = "NotEquals"
    case lessThanEqual = "LessThanEqual"
    case greaterThanEqual = "GreaterThanEqual"
    case equalsAny = "EqualsAny"
}
