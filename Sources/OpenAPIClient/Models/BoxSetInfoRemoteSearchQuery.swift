//
// BoxSetInfoRemoteSearchQuery.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

public struct BoxSetInfoRemoteSearchQuery: Codable, Hashable {

    public var searchInfo: BoxSetInfo?
    public var itemId: UUID?
    /** Will only search within the given provider when set. */
    public var searchProviderName: String?
    /** Gets or sets a value indicating whether disabled providers should be included. */
    public var includeDisabledProviders: Bool?

    public init(searchInfo: BoxSetInfo? = nil, itemId: UUID? = nil, searchProviderName: String? = nil, includeDisabledProviders: Bool? = nil) {
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
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(searchInfo, forKey: .searchInfo)
        try container.encodeIfPresent(itemId, forKey: .itemId)
        try container.encodeIfPresent(searchProviderName, forKey: .searchProviderName)
        try container.encodeIfPresent(includeDisabledProviders, forKey: .includeDisabledProviders)
    }



}
