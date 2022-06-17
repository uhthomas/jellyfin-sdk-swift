//
// Architecture.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public enum Architecture: String, Codable, CaseIterable {
    case x86 = "X86"
    case x64 = "X64"
    case arm = "Arm"
    case arm64 = "Arm64"
    case wasm = "Wasm"
    case s390x = "S390x"
}
