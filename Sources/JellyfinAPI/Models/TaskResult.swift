//
// TaskResult.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Class TaskExecutionInfo. */
public struct TaskResult: Codable, JSONEncodable, Hashable {

    /** Gets or sets the start time UTC. */
    public var startTimeUtc: Date?
    /** Gets or sets the end time UTC. */
    public var endTimeUtc: Date?
    /** Gets or sets the status. */
    public var status: TaskCompletionStatus?
    /** Gets or sets the name. */
    public var name: String?
    /** Gets or sets the key. */
    public var key: String?
    /** Gets or sets the id. */
    public var id: String?
    /** Gets or sets the error message. */
    public var errorMessage: String?
    /** Gets or sets the long error message. */
    public var longErrorMessage: String?

    public init(startTimeUtc: Date? = nil, endTimeUtc: Date? = nil, status: TaskCompletionStatus? = nil, name: String? = nil, key: String? = nil, id: String? = nil, errorMessage: String? = nil, longErrorMessage: String? = nil) {
        self.startTimeUtc = startTimeUtc
        self.endTimeUtc = endTimeUtc
        self.status = status
        self.name = name
        self.key = key
        self.id = id
        self.errorMessage = errorMessage
        self.longErrorMessage = longErrorMessage
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case startTimeUtc = "StartTimeUtc"
        case endTimeUtc = "EndTimeUtc"
        case status = "Status"
        case name = "Name"
        case key = "Key"
        case id = "Id"
        case errorMessage = "ErrorMessage"
        case longErrorMessage = "LongErrorMessage"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(startTimeUtc, forKey: .startTimeUtc)
        try encoderContainer.encodeIfPresent(endTimeUtc, forKey: .endTimeUtc)
        try encoderContainer.encodeIfPresent(status, forKey: .status)
        try encoderContainer.encodeIfPresent(name, forKey: .name)
        try encoderContainer.encodeIfPresent(key, forKey: .key)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(errorMessage, forKey: .errorMessage)
        try encoderContainer.encodeIfPresent(longErrorMessage, forKey: .longErrorMessage)
    }
}
