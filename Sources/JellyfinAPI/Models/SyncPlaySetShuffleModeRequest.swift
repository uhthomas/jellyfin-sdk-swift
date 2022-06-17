//
// SyncPlaySetShuffleModeRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class SetShuffleModeRequestDto. */
public struct SyncPlaySetShuffleModeRequest: Codable, JSONEncodable, Hashable {

    /** Enum GroupShuffleMode. */
    public var mode: GroupShuffleMode?

    public init(mode: GroupShuffleMode? = nil) {
        self.mode = mode
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case mode = "Mode"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(mode, forKey: .mode)
    }
}
