//
// CreateUserByName.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** The create user by name request body. */
public struct CreateUserByName: Codable, JSONEncodable, Hashable {

    /** Gets or sets the username. */
    public var name: String?
    /** Gets or sets the password. */
    public var password: String?

    public init(name: String? = nil, password: String? = nil) {
        self.name = name
        self.password = password
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case password = "Password"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(password, forKey: .password)
    }
}
