//
// PackageInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Class PackageInfo. */
public struct PackageInfo: Codable, Hashable {

    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets a long description of the plugin containing features or helpful explanations. */
    public var description: String?
    /** Gets or sets a short overview of what the plugin does. */
    public var overview: String?
    /** Gets or sets the owner. */
    public var owner: String?
    /** Gets or sets the category. */
    public var category: String?
    /** Gets or sets the guid of the assembly associated with this plugin.  This is used to identify the proper item for automatic updates. */
    public var guid: String?
    /** Gets or sets the versions. */
    public var versions: [VersionInfo]?
    /** Gets or sets the image url for the package. */
    public var imageUrl: String?

    public init(name: String? = nil, description: String? = nil, overview: String? = nil, owner: String? = nil, category: String? = nil, guid: String? = nil, versions: [VersionInfo]? = nil, imageUrl: String? = nil) {
        self.name = name
        self.description = description
        self.overview = overview
        self.owner = owner
        self.category = category
        self.guid = guid
        self.versions = versions
        self.imageUrl = imageUrl
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name
        case description
        case overview
        case owner
        case category
        case guid
        case versions
        case imageUrl
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(description, forKey: .description)
        try container.encodeIfPresent(overview, forKey: .overview)
        try container.encodeIfPresent(owner, forKey: .owner)
        try container.encodeIfPresent(category, forKey: .category)
        try container.encodeIfPresent(guid, forKey: .guid)
        try container.encodeIfPresent(versions, forKey: .versions)
        try container.encodeIfPresent(imageUrl, forKey: .imageUrl)
    }



}