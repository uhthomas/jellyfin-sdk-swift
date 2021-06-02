//
// PlaybackInfoDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
import AnyCodable

/** Plabyback info dto. */
public struct PlaybackInfoDto: Codable, Hashable {

    /** Gets or sets the playback userId. */
    public var userId: UUID?
    /** Gets or sets the max streaming bitrate. */
    public var maxStreamingBitrate: Int?
    /** Gets or sets the start time in ticks. */
    public var startTimeTicks: Int64?
    /** Gets or sets the audio stream index. */
    public var audioStreamIndex: Int?
    /** Gets or sets the subtitle stream index. */
    public var subtitleStreamIndex: Int?
    /** Gets or sets the max audio channels. */
    public var maxAudioChannels: Int?
    /** Gets or sets the media source id. */
    public var mediaSourceId: String?
    /** Gets or sets the live stream id. */
    public var liveStreamId: String?
    public var deviceProfile: DeviceProfile?
    /** Gets or sets a value indicating whether to enable direct play. */
    public var enableDirectPlay: Bool?
    /** Gets or sets a value indicating whether to enable direct stream. */
    public var enableDirectStream: Bool?
    /** Gets or sets a value indicating whether to enable transcoding. */
    public var enableTranscoding: Bool?
    /** Gets or sets a value indicating whether to enable video stream copy. */
    public var allowVideoStreamCopy: Bool?
    /** Gets or sets a value indicating whether to allow audio stream copy. */
    public var allowAudioStreamCopy: Bool?
    /** Gets or sets a value indicating whether to auto open the live stream. */
    public var autoOpenLiveStream: Bool?

    public init(userId: UUID? = nil, maxStreamingBitrate: Int? = nil, startTimeTicks: Int64? = nil, audioStreamIndex: Int? = nil, subtitleStreamIndex: Int? = nil, maxAudioChannels: Int? = nil, mediaSourceId: String? = nil, liveStreamId: String? = nil, deviceProfile: DeviceProfile? = nil, enableDirectPlay: Bool? = nil, enableDirectStream: Bool? = nil, enableTranscoding: Bool? = nil, allowVideoStreamCopy: Bool? = nil, allowAudioStreamCopy: Bool? = nil, autoOpenLiveStream: Bool? = nil) {
        self.userId = userId
        self.maxStreamingBitrate = maxStreamingBitrate
        self.startTimeTicks = startTimeTicks
        self.audioStreamIndex = audioStreamIndex
        self.subtitleStreamIndex = subtitleStreamIndex
        self.maxAudioChannels = maxAudioChannels
        self.mediaSourceId = mediaSourceId
        self.liveStreamId = liveStreamId
        self.deviceProfile = deviceProfile
        self.enableDirectPlay = enableDirectPlay
        self.enableDirectStream = enableDirectStream
        self.enableTranscoding = enableTranscoding
        self.allowVideoStreamCopy = allowVideoStreamCopy
        self.allowAudioStreamCopy = allowAudioStreamCopy
        self.autoOpenLiveStream = autoOpenLiveStream
    }
    public enum CodingKeys: String, CodingKey, CaseIterable {
        case userId = "UserId"
        case maxStreamingBitrate = "MaxStreamingBitrate"
        case startTimeTicks = "StartTimeTicks"
        case audioStreamIndex = "AudioStreamIndex"
        case subtitleStreamIndex = "SubtitleStreamIndex"
        case maxAudioChannels = "MaxAudioChannels"
        case mediaSourceId = "MediaSourceId"
        case liveStreamId = "LiveStreamId"
        case deviceProfile = "DeviceProfile"
        case enableDirectPlay = "EnableDirectPlay"
        case enableDirectStream = "EnableDirectStream"
        case enableTranscoding = "EnableTranscoding"
        case allowVideoStreamCopy = "AllowVideoStreamCopy"
        case allowAudioStreamCopy = "AllowAudioStreamCopy"
        case autoOpenLiveStream = "AutoOpenLiveStream"
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encodeIfPresent(userId, forKey: .userId)
        try container.encodeIfPresent(maxStreamingBitrate, forKey: .maxStreamingBitrate)
        try container.encodeIfPresent(startTimeTicks, forKey: .startTimeTicks)
        try container.encodeIfPresent(audioStreamIndex, forKey: .audioStreamIndex)
        try container.encodeIfPresent(subtitleStreamIndex, forKey: .subtitleStreamIndex)
        try container.encodeIfPresent(maxAudioChannels, forKey: .maxAudioChannels)
        try container.encodeIfPresent(mediaSourceId, forKey: .mediaSourceId)
        try container.encodeIfPresent(liveStreamId, forKey: .liveStreamId)
        try container.encodeIfPresent(deviceProfile, forKey: .deviceProfile)
        try container.encodeIfPresent(enableDirectPlay, forKey: .enableDirectPlay)
        try container.encodeIfPresent(enableDirectStream, forKey: .enableDirectStream)
        try container.encodeIfPresent(enableTranscoding, forKey: .enableTranscoding)
        try container.encodeIfPresent(allowVideoStreamCopy, forKey: .allowVideoStreamCopy)
        try container.encodeIfPresent(allowAudioStreamCopy, forKey: .allowAudioStreamCopy)
        try container.encodeIfPresent(autoOpenLiveStream, forKey: .autoOpenLiveStream)
    }



}
