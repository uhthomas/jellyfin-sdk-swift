//
// MetadataOptions.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class MetadataOptions. */
public struct MetadataOptions: Codable, JSONEncodable, Hashable {

    public var itemType: String?
    public var disabledMetadataSavers: [String]?
    public var localMetadataReaderOrder: [String]?
    public var disabledMetadataFetchers: [String]?
    public var metadataFetcherOrder: [String]?
    public var disabledImageFetchers: [String]?
    public var imageFetcherOrder: [String]?

    public init(itemType: String? = nil, disabledMetadataSavers: [String]? = nil, localMetadataReaderOrder: [String]? = nil, disabledMetadataFetchers: [String]? = nil, metadataFetcherOrder: [String]? = nil, disabledImageFetchers: [String]? = nil, imageFetcherOrder: [String]? = nil) {
        self.itemType = itemType
        self.disabledMetadataSavers = disabledMetadataSavers
        self.localMetadataReaderOrder = localMetadataReaderOrder
        self.disabledMetadataFetchers = disabledMetadataFetchers
        self.metadataFetcherOrder = metadataFetcherOrder
        self.disabledImageFetchers = disabledImageFetchers
        self.imageFetcherOrder = imageFetcherOrder
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case itemType = "ItemType"
        case disabledMetadataSavers = "DisabledMetadataSavers"
        case localMetadataReaderOrder = "LocalMetadataReaderOrder"
        case disabledMetadataFetchers = "DisabledMetadataFetchers"
        case metadataFetcherOrder = "MetadataFetcherOrder"
        case disabledImageFetchers = "DisabledImageFetchers"
        case imageFetcherOrder = "ImageFetcherOrder"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(itemType, forKey: .itemType)
        try encoderContainer.encodeIfPresent(disabledMetadataSavers, forKey: .disabledMetadataSavers)
        try encoderContainer.encodeIfPresent(localMetadataReaderOrder, forKey: .localMetadataReaderOrder)
        try encoderContainer.encodeIfPresent(disabledMetadataFetchers, forKey: .disabledMetadataFetchers)
        try encoderContainer.encodeIfPresent(metadataFetcherOrder, forKey: .metadataFetcherOrder)
        try encoderContainer.encodeIfPresent(disabledImageFetchers, forKey: .disabledImageFetchers)
        try encoderContainer.encodeIfPresent(imageFetcherOrder, forKey: .imageFetcherOrder)
    }
}
