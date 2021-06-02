//
// CreatePlaylistDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Create new playlist dto. */
public struct CreatePlaylistDto: Codable, Hashable {

    /** Gets or sets the name of the new playlist. */
    public var name: String?
    /** Gets or sets item ids to add to the playlist. */
    public var ids: [UUID]?
    /** Gets or sets the user id. */
    public var userId: UUID?
    /** Gets or sets the media type. */
    public var mediaType: String?

    public init(name: String? = nil, ids: [UUID]? = nil, userId: UUID? = nil, mediaType: String? = nil) {
        self.name = name
        self.ids = ids
        self.userId = userId
        self.mediaType = mediaType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case ids = "Ids"
        case userId = "UserId"
        case mediaType = "MediaType"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(ids, forKey: .ids)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(mediaType, forKey: .mediaType)
    }



}
