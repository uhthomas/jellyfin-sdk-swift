//
// UploadSubtitleDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Upload subtitles dto. */
public struct UploadSubtitleDto: Codable, JSONEncodable, Hashable {

    /** Gets or sets the subtitle language. */
    public var language: String
    /** Gets or sets the subtitle format. */
    public var format: String
    /** Gets or sets a value indicating whether the subtitle is forced. */
    public var isForced: Bool
    /** Gets or sets the subtitle data. */
    public var data: String

    public init(language: String, format: String, isForced: Bool, data: String) {
        self.language = language
        self.format = format
        self.isForced = isForced
        self.data = data
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case language = "Language"
        case format = "Format"
        case isForced = "IsForced"
        case data = "Data"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encode(language, forKey: .language)
        try encoderContainer.encode(format, forKey: .format)
        try encoderContainer.encode(isForced, forKey: .isForced)
        try encoderContainer.encode(data, forKey: .data)
    }
}
