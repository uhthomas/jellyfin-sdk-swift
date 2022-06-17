//
// PlaylistsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(Combine)
import Combine
#endif
#if canImport(AnyCodable)
import AnyCodable
#endif

open class PlaylistsAPI {

    /**
     Adds items to a playlist.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter ids: (query) Item id, comma delimited. (optional)
     - parameter userId: (query) The userId. (optional)
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func addToPlaylist(playlistId: String, ids: [String]? = nil, userId: String? = nil) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = addToPlaylistWithRequestBuilder(playlistId: playlistId, ids: ids, userId: userId).execute { result in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Adds items to a playlist.
     - POST /Playlists/{playlistId}/Items
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter ids: (query) Item id, comma delimited. (optional)
     - parameter userId: (query) The userId. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func addToPlaylistWithRequestBuilder(playlistId: String, ids: [String]? = nil, userId: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/Playlists/{playlistId}/Items"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "ids": ids?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Creates a new playlist.
     
     - parameter name: (query) The playlist name. (optional)
     - parameter ids: (query) The item ids. (optional)
     - parameter userId: (query) The user id. (optional)
     - parameter mediaType: (query) The media type. (optional)
     - parameter createPlaylistRequest: (body) The create playlist payload. (optional)
     - returns: AnyPublisher<PlaylistCreationResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func createPlaylist(name: String? = nil, ids: [String]? = nil, userId: String? = nil, mediaType: String? = nil, createPlaylistRequest: CreatePlaylistRequest? = nil) -> AnyPublisher<PlaylistCreationResult, Error> {
        var requestTask: RequestTask?
        return Future<PlaylistCreationResult, Error> { promise in
            requestTask = createPlaylistWithRequestBuilder(name: name, ids: ids, userId: userId, mediaType: mediaType, createPlaylistRequest: createPlaylistRequest).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Creates a new playlist.
     - POST /Playlists
     - For backwards compatibility parameters can be sent via Query or Body, with Query having higher precedence.  Query parameters are obsolete.
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter name: (query) The playlist name. (optional)
     - parameter ids: (query) The item ids. (optional)
     - parameter userId: (query) The user id. (optional)
     - parameter mediaType: (query) The media type. (optional)
     - parameter createPlaylistRequest: (body) The create playlist payload. (optional)
     - returns: RequestBuilder<PlaylistCreationResult> 
     */
    open class func createPlaylistWithRequestBuilder(name: String? = nil, ids: [String]? = nil, userId: String? = nil, mediaType: String? = nil, createPlaylistRequest: CreatePlaylistRequest? = nil) -> RequestBuilder<PlaylistCreationResult> {
        let localVariablePath = "/Playlists"
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters = JSONEncodingHelper.encodingParameters(forEncodableObject: createPlaylistRequest)

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "name": name?.encodeToJSON(),
            "ids": ids?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "mediaType": mediaType?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<PlaylistCreationResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets the original items of a playlist.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter userId: (query) User id. 
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: AnyPublisher<BaseItemDtoQueryResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getPlaylistItems(playlistId: String, userId: String, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> AnyPublisher<BaseItemDtoQueryResult, Error> {
        var requestTask: RequestTask?
        return Future<BaseItemDtoQueryResult, Error> { promise in
            requestTask = getPlaylistItemsWithRequestBuilder(playlistId: playlistId, userId: userId, startIndex: startIndex, limit: limit, fields: fields, enableImages: enableImages, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes).execute { result in
                switch result {
                case let .success(response):
                    promise(.success(response.body))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Gets the original items of a playlist.
     - GET /Playlists/{playlistId}/Items
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter userId: (query) User id. 
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter enableImages: (query) Optional. Include image information in output. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getPlaylistItemsWithRequestBuilder(playlistId: String, userId: String, startIndex: Int? = nil, limit: Int? = nil, fields: [ItemFields]? = nil, enableImages: Bool? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        var localVariablePath = "/Playlists/{playlistId}/Items"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Moves a playlist item.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter itemId: (path) The item id. 
     - parameter newIndex: (path) The new index. 
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func moveItem(playlistId: String, itemId: String, newIndex: Int) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = moveItemWithRequestBuilder(playlistId: playlistId, itemId: itemId, newIndex: newIndex).execute { result in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Moves a playlist item.
     - POST /Playlists/{playlistId}/Items/{itemId}/Move/{newIndex}
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter itemId: (path) The item id. 
     - parameter newIndex: (path) The new index. 
     - returns: RequestBuilder<Void> 
     */
    open class func moveItemWithRequestBuilder(playlistId: String, itemId: String, newIndex: Int) -> RequestBuilder<Void> {
        var localVariablePath = "/Playlists/{playlistId}/Items/{itemId}/Move/{newIndex}"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let newIndexPreEscape = "\(APIHelper.mapValueToPathItem(newIndex))"
        let newIndexPostEscape = newIndexPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{newIndex}", with: newIndexPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Removes items from a playlist.
     
     - parameter playlistId: (path) The playlist id. 
     - parameter entryIds: (query) The item ids, comma delimited. (optional)
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func removeFromPlaylist(playlistId: String, entryIds: [String]? = nil) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = removeFromPlaylistWithRequestBuilder(playlistId: playlistId, entryIds: entryIds).execute { result in
                switch result {
                case .success:
                    promise(.success(()))
                case let .failure(error):
                    promise(.failure(error))
                }
            }
        }
        .handleEvents(receiveCancel: {
            requestTask?.cancel()
        })
        .eraseToAnyPublisher()
    }
    #endif

    /**
     Removes items from a playlist.
     - DELETE /Playlists/{playlistId}/Items
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter playlistId: (path) The playlist id. 
     - parameter entryIds: (query) The item ids, comma delimited. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func removeFromPlaylistWithRequestBuilder(playlistId: String, entryIds: [String]? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/Playlists/{playlistId}/Items"
        let playlistIdPreEscape = "\(APIHelper.mapValueToPathItem(playlistId))"
        let playlistIdPostEscape = playlistIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{playlistId}", with: playlistIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "entryIds": entryIds?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "DELETE", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
