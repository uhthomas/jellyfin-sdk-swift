//
// PublicSystemInfo.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public struct PublicSystemInfo: Codable, JSONEncodable, Hashable {

    /** Gets or sets the local address. */
    public var localAddress: String?
    /** Gets or sets the name of the server. */
    public var serverName: String?
    /** Gets or sets the server version. */
    public var version: String?
    /** Gets or sets the product name. This is the AssemblyProduct name. */
    public var productName: String?
    /** Gets or sets the operating system. */
    public var operatingSystem: String?
    /** Gets or sets the id. */
    public var id: String?
    /** Gets or sets a value indicating whether the startup wizard is completed. */
    public var startupWizardCompleted: Bool?

    public init(localAddress: String? = nil, serverName: String? = nil, version: String? = nil, productName: String? = nil, operatingSystem: String? = nil, id: String? = nil, startupWizardCompleted: Bool? = nil) {
        self.localAddress = localAddress
        self.serverName = serverName
        self.version = version
        self.productName = productName
        self.operatingSystem = operatingSystem
        self.id = id
        self.startupWizardCompleted = startupWizardCompleted
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case localAddress = "LocalAddress"
        case serverName = "ServerName"
        case version = "Version"
        case productName = "ProductName"
        case operatingSystem = "OperatingSystem"
        case id = "Id"
        case startupWizardCompleted = "StartupWizardCompleted"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var encoderContainer = encoder.container(keyedBy: CodingKeys.self)
        try encoderContainer.encodeIfPresent(localAddress, forKey: .localAddress)
        try encoderContainer.encodeIfPresent(serverName, forKey: .serverName)
        try encoderContainer.encodeIfPresent(version, forKey: .version)
        try encoderContainer.encodeIfPresent(productName, forKey: .productName)
        try encoderContainer.encodeIfPresent(operatingSystem, forKey: .operatingSystem)
        try encoderContainer.encodeIfPresent(id, forKey: .id)
        try encoderContainer.encodeIfPresent(startupWizardCompleted, forKey: .startupWizardCompleted)
    }
}
