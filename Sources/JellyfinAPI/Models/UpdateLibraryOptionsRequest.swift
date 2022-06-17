//
// UpdateLibraryOptionsRequest.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

/** Update library options dto. */
public struct UpdateLibraryOptionsRequest: Codable, JSONEncodable, Hashable {

    /** Gets or sets the library item id. */
    public var id: String?
    public var libraryOptions: AddVirtualFolderDtoLibraryOptions?

    public init(id: String? = nil, libraryOptions: AddVirtualFolderDtoLibraryOptions? = nil) {
        self.id = id
        self.libraryOptions = libraryOptions
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case id = "Id"
        case libraryOptions = "LibraryOptions"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(libraryOptions, forKey: .libraryOptions)
    }
}
