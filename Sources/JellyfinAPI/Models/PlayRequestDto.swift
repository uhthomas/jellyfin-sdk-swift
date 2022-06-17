//
// PlayRequestDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class PlayRequestDto. */
public struct PlayRequestDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets the playing queue. */
    public var playingQueue: [String]?
    /** Gets or sets the position of the playing item in the queue. */
    public var playingItemPosition: Int?
    /** Gets or sets the start position ticks. */
    public var startPositionTicks: Int64?

    public init(playingQueue: [String]? = nil, playingItemPosition: Int? = nil, startPositionTicks: Int64? = nil) {
        self.playingQueue = playingQueue
        self.playingItemPosition = playingItemPosition
        self.startPositionTicks = startPositionTicks
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case playingQueue = "PlayingQueue"
        case playingItemPosition = "PlayingItemPosition"
        case startPositionTicks = "StartPositionTicks"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(playingQueue, forKey: .playingQueue)
        try encoderContainer.encodeIfPresent(playingItemPosition, forKey: .playingItemPosition)
        try encoderContainer.encodeIfPresent(startPositionTicks, forKey: .startPositionTicks)
    }
}
