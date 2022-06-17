//
// RemoteSearchResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct RemoteSearchResult: Codable, JSONEncodable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the provider ids. */
    public var providerIds: [String: String]?
    /** Gets or sets the year. */
    public var productionYear: Int?
    public var indexNumber: Int?
    public var indexNumberEnd: Int?
    public var parentIndexNumber: Int?
    public var premiereDate: Date?
    public var imageUrl: String?
    public var searchProviderName: String?
    public var overview: String?

    public init(name: String? = nil, providerIds: [String: String]? = nil, productionYear: Int? = nil, indexNumber: Int? = nil, indexNumberEnd: Int? = nil, parentIndexNumber: Int? = nil, premiereDate: Date? = nil, imageUrl: String? = nil, searchProviderName: String? = nil, overview: String? = nil) {
        self.name = name
        self.providerIds = providerIds
        self.productionYear = productionYear
        self.indexNumber = indexNumber
        self.indexNumberEnd = indexNumberEnd
        self.parentIndexNumber = parentIndexNumber
        self.premiereDate = premiereDate
        self.imageUrl = imageUrl
        self.searchProviderName = searchProviderName
        self.overview = overview
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case providerIds = "ProviderIds"
        case productionYear = "ProductionYear"
        case indexNumber = "IndexNumber"
        case indexNumberEnd = "IndexNumberEnd"
        case parentIndexNumber = "ParentIndexNumber"
        case premiereDate = "PremiereDate"
        case imageUrl = "ImageUrl"
        case searchProviderName = "SearchProviderName"
        case overview = "Overview"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(providerIds, forKey: .providerIds)
        try encoderContainer.encodeIfPresent(productionYear, forKey: .productionYear)
        try encoderContainer.encodeIfPresent(indexNumber, forKey: .indexNumber)
        try encoderContainer.encodeIfPresent(indexNumberEnd, forKey: .indexNumberEnd)
        try encoderContainer.encodeIfPresent(parentIndexNumber, forKey: .parentIndexNumber)
        try encoderContainer.encodeIfPresent(premiereDate, forKey: .premiereDate)
        try encoderContainer.encodeIfPresent(imageUrl, forKey: .imageUrl)
        try encoderContainer.encodeIfPresent(searchProviderName, forKey: .searchProviderName)
        try encoderContainer.encodeIfPresent(overview, forKey: .overview)
    }
}
