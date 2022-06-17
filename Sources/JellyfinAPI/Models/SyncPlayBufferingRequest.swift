//
// SyncPlayBufferingRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class BufferRequestDto. */
public struct SyncPlayBufferingRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets when the request has been made by the client. */
    public var when: Date?
    /** Gets or sets the position ticks. */
    public var positionTicks: Int64?
    /** Gets or sets a value indicating whether the client playback is unpaused. */
    public var isPlaying: Bool?
    /** Gets or sets the playlist item identifier of the playing item. */
    public var playlistItemId: String?

    public init(when: Date? = nil, positionTicks: Int64? = nil, isPlaying: Bool? = nil, playlistItemId: String? = nil) {
        self.when = when
        self.positionTicks = positionTicks
        self.isPlaying = isPlaying
        self.playlistItemId = playlistItemId
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case when = "When"
        case positionTicks = "PositionTicks"
        case isPlaying = "IsPlaying"
        case playlistItemId = "PlaylistItemId"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(when, forKey: .when)
        try encoderContainer.encodeIfPresent(positionTicks, forKey: .positionTicks)
        try encoderContainer.encodeIfPresent(isPlaying, forKey: .isPlaying)
        try encoderContainer.encodeIfPresent(playlistItemId, forKey: .playlistItemId)
    }
}
