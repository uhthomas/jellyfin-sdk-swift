//
// SendMessageCommandRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct SendMessageCommandRequest: Codable, JSONEncodable, Hashable {

    public var header: String?
    public var text: String
    public var timeoutMs: Int64?

    public init(header: String? = nil, text: String, timeoutMs: Int64? = nil) {
        self.header = header
        self.text = text
        self.timeoutMs = timeoutMs
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case header = "Header"
        case text = "Text"
        case timeoutMs = "TimeoutMs"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(header, forKey: .header)
        try encoderContainer.encode(text, forKey: .text)
        try encoderContainer.encodeIfPresent(timeoutMs, forKey: .timeoutMs)
    }
}
