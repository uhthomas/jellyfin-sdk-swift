//
// MetadataEditorInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct MetadataEditorInfo: Codable, JSONEncodable, Hashable {

    public var parentalRatingOptions: [ParentalRating]?
    public var countries: [CountryInfo]?
    public var cultures: [CultureDto]?
    public var externalIdInfos: [ExternalIdInfo]?
    public var contentType: String?
    public var contentTypeOptions: [NameValuePair]?

    public init(parentalRatingOptions: [ParentalRating]? = nil, countries: [CountryInfo]? = nil, cultures: [CultureDto]? = nil, externalIdInfos: [ExternalIdInfo]? = nil, contentType: String? = nil, contentTypeOptions: [NameValuePair]? = nil) {
        self.parentalRatingOptions = parentalRatingOptions
        self.countries = countries
        self.cultures = cultures
        self.externalIdInfos = externalIdInfos
        self.contentType = contentType
        self.contentTypeOptions = contentTypeOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case parentalRatingOptions = "ParentalRatingOptions"
        case countries = "Countries"
        case cultures = "Cultures"
        case externalIdInfos = "ExternalIdInfos"
        case contentType = "ContentType"
        case contentTypeOptions = "ContentTypeOptions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(parentalRatingOptions, forKey: .parentalRatingOptions)
        try encoderContainer.encodeIfPresent(countries, forKey: .countries)
        try encoderContainer.encodeIfPresent(cultures, forKey: .cultures)
        try encoderContainer.encodeIfPresent(externalIdInfos, forKey: .externalIdInfos)
        try encoderContainer.encodeIfPresent(contentType, forKey: .contentType)
        try encoderContainer.encodeIfPresent(contentTypeOptions, forKey: .contentTypeOptions)
    }
}
