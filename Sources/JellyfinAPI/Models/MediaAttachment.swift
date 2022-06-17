//
// MediaAttachment.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class MediaAttachment. */
public struct MediaAttachment: Codable, JSONEncodable, Hashable {

    /** Gets or sets the codec. */
    public var codec: String?
    /** Gets or sets the codec tag. */
    public var codecTag: String?
    /** Gets or sets the comment. */
    public var comment: String?
    /** Gets or sets the index. */
    public var index: Int?
    /** Gets or sets the filename. */
    public var fileName: String?
    /** Gets or sets the MIME type. */
    public var mimeType: String?
    /** Gets or sets the delivery URL. */
    public var deliveryUrl: String?

    public init(codec: String? = nil, codecTag: String? = nil, comment: String? = nil, index: Int? = nil, fileName: String? = nil, mimeType: String? = nil, deliveryUrl: String? = nil) {
        self.codec = codec
        self.codecTag = codecTag
        self.comment = comment
        self.index = index
        self.fileName = fileName
        self.mimeType = mimeType
        self.deliveryUrl = deliveryUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case codec = "Codec"
        case codecTag = "CodecTag"
        case comment = "Comment"
        case index = "Index"
        case fileName = "FileName"
        case mimeType = "MimeType"
        case deliveryUrl = "DeliveryUrl"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(codec, forKey: .codec)
        try encoderContainer.encodeIfPresent(codecTag, forKey: .codecTag)
        try encoderContainer.encodeIfPresent(comment, forKey: .comment)
        try encoderContainer.encodeIfPresent(index, forKey: .index)
        try encoderContainer.encodeIfPresent(fileName, forKey: .fileName)
        try encoderContainer.encodeIfPresent(mimeType, forKey: .mimeType)
        try encoderContainer.encodeIfPresent(deliveryUrl, forKey: .deliveryUrl)
    }
}
