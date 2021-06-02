//
// RemoteImageInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Class RemoteImageInfo. */
public struct RemoteImageInfo: Codable, Hashable {

    /** Gets or sets the name of the provider. */
    public var providerName: String?
    /** Gets or sets the URL. */
    public var url: String?
    /** Gets a url used for previewing a smaller version. */
    public var thumbnailUrl: String?
    /** Gets or sets the height. */
    public var height: Int?
    /** Gets or sets the width. */
    public var width: Int?
    /** Gets or sets the community rating. */
    public var communityRating: Double?
    /** Gets or sets the vote count. */
    public var voteCount: Int?
    /** Gets or sets the language. */
    public var language: String?
    public var type: ImageType?
    public var ratingType: RatingType?

    public init(providerName: String? = nil, url: String? = nil, thumbnailUrl: String? = nil, height: Int? = nil, width: Int? = nil, communityRating: Double? = nil, voteCount: Int? = nil, language: String? = nil, type: ImageType? = nil, ratingType: RatingType? = nil) {
        self.providerName = providerName
        self.url = url
        self.thumbnailUrl = thumbnailUrl
        self.height = height
        self.width = width
        self.communityRating = communityRating
        self.voteCount = voteCount
        self.language = language
        self.type = type
        self.ratingType = ratingType
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case providerName = "ProviderName"
        case url = "Url"
        case thumbnailUrl = "ThumbnailUrl"
        case height = "Height"
        case width = "Width"
        case communityRating = "CommunityRating"
        case voteCount = "VoteCount"
        case language = "Language"
        case type = "Type"
        case ratingType = "RatingType"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(providerName, forKey: .providerName)
        try container.encodeIfPresent(url, forKey: .url)
        try container.encodeIfPresent(thumbnailUrl, forKey: .thumbnailUrl)
        try container.encodeIfPresent(height, forKey: .height)
        try container.encodeIfPresent(width, forKey: .width)
        try container.encodeIfPresent(communityRating, forKey: .communityRating)
        try container.encodeIfPresent(voteCount, forKey: .voteCount)
        try container.encodeIfPresent(language, forKey: .language)
        try container.encodeIfPresent(type, forKey: .type)
        try container.encodeIfPresent(ratingType, forKey: .ratingType)
    }



}