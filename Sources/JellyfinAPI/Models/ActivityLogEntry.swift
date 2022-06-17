//
// ActivityLogEntry.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** An activity log entry. */
public struct ActivityLogEntry: Codable, JSONEncodable, Hashable {

    /** Gets or sets the identifier. */
    public var id: Int64?
    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the overview. */
    public var overview: String?
    /** Gets or sets the short overview. */
    public var shortOverview: String?
    /** Gets or sets the type. */
    public var type: String?
    /** Gets or sets the item identifier. */
    public var itemId: String?
    /** Gets or sets the date. */
    public var date: Date?
    /** Gets or sets the user identifier. */
    public var userId: String?
    /** Gets or sets the user primary image tag. */
    @available(*, deprecated, message: "This property is deprecated.")
    public var userPrimaryImageTag: String?
    /** Gets or sets the log severity. */
    public var severity: LogLevel?

    public init(id: Int64? = nil, name: String? = nil, overview: String? = nil, shortOverview: String? = nil, type: String? = nil, itemId: String? = nil, date: Date? = nil, userId: String? = nil, userPrimaryImageTag: String? = nil, severity: LogLevel? = nil) {
        self.id = id
        self.name = name
        self.overview = overview
        self.shortOverview = shortOverview
        self.type = type
        self.itemId = itemId
        self.date = date
        self.userId = userId
        self.userPrimaryImageTag = userPrimaryImageTag
        self.severity = severity
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case name = "Name"
        case overview = "Overview"
        case shortOverview = "ShortOverview"
        case type = "Type"
        case itemId = "ItemId"
        case date = "Date"
        case userId = "UserId"
        case userPrimaryImageTag = "UserPrimaryImageTag"
        case severity = "Severity"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(overview, forKey: .overview)
        try encoderContainer.encodeIfPresent(shortOverview, forKey: .shortOverview)
        try encoderContainer.encodeIfPresent(type, forKey: .type)
        try encoderContainer.encodeIfPresent(itemId, forKey: .itemId)
        try encoderContainer.encodeIfPresent(date, forKey: .date)
        try encoderContainer.encodeIfPresent(userId, forKey: .userId)
        try encoderContainer.encodeIfPresent(userPrimaryImageTag, forKey: .userPrimaryImageTag)
        try encoderContainer.encodeIfPresent(severity, forKey: .severity)
    }
}
