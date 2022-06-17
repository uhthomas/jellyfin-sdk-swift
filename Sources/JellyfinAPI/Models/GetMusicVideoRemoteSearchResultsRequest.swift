//
// GetMusicVideoRemoteSearchResultsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct GetMusicVideoRemoteSearchResultsRequest: Codable, JSONEncodable, Hashable {

    public var searchInfo: MusicVideoInfoRemoteSearchQuerySearchInfo?
    public var itemId: String?
    /** Gets or sets the provider name to search within if set. */
    public var searchProviderName: String?
    /** Gets or sets a value indicating whether disabled providers should be included. */
    public var includeDisabledProviders: Bool?

    public init(searchInfo: MusicVideoInfoRemoteSearchQuerySearchInfo? = nil, itemId: String? = nil, searchProviderName: String? = nil, includeDisabledProviders: Bool? = nil) {
        self.searchInfo = searchInfo
        self.itemId = itemId
        self.searchProviderName = searchProviderName
        self.includeDisabledProviders = includeDisabledProviders
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case searchInfo = "SearchInfo"
        case itemId = "ItemId"
        case searchProviderName = "SearchProviderName"
        case includeDisabledProviders = "IncludeDisabledProviders"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(searchInfo, forKey: .searchInfo)
        try encoderContainer.encodeIfPresent(itemId, forKey: .itemId)
        try encoderContainer.encodeIfPresent(searchProviderName, forKey: .searchProviderName)
        try encoderContainer.encodeIfPresent(includeDisabledProviders, forKey: .includeDisabledProviders)
    }
}