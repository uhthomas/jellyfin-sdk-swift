//
// DeviceInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct DeviceInfo: Codable, JSONEncodable, Hashable {

    public var name: String?
    /** Gets or sets the access token. */
    public var accessToken: String?
    /** Gets or sets the identifier. */
    public var id: String?
    /** Gets or sets the last name of the user. */
    public var lastUserName: String?
    /** Gets or sets the name of the application. */
    public var appName: String?
    /** Gets or sets the application version. */
    public var appVersion: String?
    /** Gets or sets the last user identifier. */
    public var lastUserId: String?
    /** Gets or sets the date last modified. */
    public var dateLastActivity: Date?
    public var capabilities: DeviceInfoCapabilities?
    public var iconUrl: String?

    public init(name: String? = nil, accessToken: String? = nil, id: String? = nil, lastUserName: String? = nil, appName: String? = nil, appVersion: String? = nil, lastUserId: String? = nil, dateLastActivity: Date? = nil, capabilities: DeviceInfoCapabilities? = nil, iconUrl: String? = nil) {
        self.name = name
        self.accessToken = accessToken
        self.id = id
        self.lastUserName = lastUserName
        self.appName = appName
        self.appVersion = appVersion
        self.lastUserId = lastUserId
        self.dateLastActivity = dateLastActivity
        self.capabilities = capabilities
        self.iconUrl = iconUrl
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case name = "Name"
        case accessToken = "AccessToken"
        case id = "Id"
        case lastUserName = "LastUserName"
        case appName = "AppName"
        case appVersion = "AppVersion"
        case lastUserId = "LastUserId"
        case dateLastActivity = "DateLastActivity"
        case capabilities = "Capabilities"
        case iconUrl = "IconUrl"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(accessToken, forKey: .accessToken)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(lastUserName, forKey: .lastUserName)
        try encoderContainer.encodeIfPresent(appName, forKey: .appName)
        try encoderContainer.encodeIfPresent(appVersion, forKey: .appVersion)
        try encoderContainer.encodeIfPresent(lastUserId, forKey: .lastUserId)
        try encoderContainer.encodeIfPresent(dateLastActivity, forKey: .dateLastActivity)
        try encoderContainer.encodeIfPresent(capabilities, forKey: .capabilities)
        try encoderContainer.encodeIfPresent(iconUrl, forKey: .iconUrl)
    }
}
