//
// ChapterInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Class ChapterInfo. */
public struct ChapterInfo: Codable, Hashable {

    /** Gets or sets the start position ticks. */
    public var startPositionTicks: Int64?
    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the image path. */
    public var imagePath: String?
    public var imageDateModified: Date?
    public var imageTag: String?

    public init(startPositionTicks: Int64? = nil, name: String? = nil, imagePath: String? = nil, imageDateModified: Date? = nil, imageTag: String? = nil) {
        self.startPositionTicks = startPositionTicks
        self.name = name
        self.imagePath = imagePath
        self.imageDateModified = imageDateModified
        self.imageTag = imageTag
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startPositionTicks = "StartPositionTicks"
        case name = "Name"
        case imagePath = "ImagePath"
        case imageDateModified = "ImageDateModified"
        case imageTag = "ImageTag"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(startPositionTicks, forKey: .startPositionTicks)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(imagePath, forKey: .imagePath)
        try container.encodeIfPresent(imageDateModified, forKey: .imageDateModified)
        try container.encodeIfPresent(imageTag, forKey: .imageTag)
    }



}