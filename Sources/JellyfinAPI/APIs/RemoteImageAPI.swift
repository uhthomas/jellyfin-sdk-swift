//
// RemoteImageAPI.swift
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

open class RemoteImageAPI {

    /**
     Downloads a remote image for an item.
     
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. 
     - parameter imageUrl: (query) The image url. (optional)
     - returns: AnyPublisher<Void, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func downloadRemoteImage(itemId: String, type: ImageType, imageUrl: String? = nil) -> AnyPublisher<Void, Error> {
        var requestTask: RequestTask?
        return Future<Void, Error> { promise in
            requestTask = downloadRemoteImageWithRequestBuilder(itemId: itemId, type: type, imageUrl: imageUrl).execute { result in
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
     Downloads a remote image for an item.
     - POST /Items/{itemId}/RemoteImages/Download
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. 
     - parameter imageUrl: (query) The image url. (optional)
     - returns: RequestBuilder<Void> 
     */
    open class func downloadRemoteImageWithRequestBuilder(itemId: String, type: ImageType, imageUrl: String? = nil) -> RequestBuilder<Void> {
        var localVariablePath = "/Items/{itemId}/RemoteImages/Download"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type.encodeToJSON(),
            "imageUrl": imageUrl?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<Void>.Type = JellyfinAPIAPI.requestBuilderFactory.getNonDecodableBuilder()

        return localVariableRequestBuilder.init(method: "POST", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets available remote image providers for an item.
     
     - parameter itemId: (path) Item Id. 
     - returns: AnyPublisher<[ImageProviderInfo], Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRemoteImageProviders(itemId: String) -> AnyPublisher<[ImageProviderInfo], Error> {
        var requestTask: RequestTask?
        return Future<[ImageProviderInfo], Error> { promise in
            requestTask = getRemoteImageProvidersWithRequestBuilder(itemId: itemId).execute { result in
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
     Gets available remote image providers for an item.
     - GET /Items/{itemId}/RemoteImages/Providers
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item Id. 
     - returns: RequestBuilder<[ImageProviderInfo]> 
     */
    open class func getRemoteImageProvidersWithRequestBuilder(itemId: String) -> RequestBuilder<[ImageProviderInfo]> {
        var localVariablePath = "/Items/{itemId}/RemoteImages/Providers"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        let localVariableUrlComponents = URLComponents(string: localVariableURLString)

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<[ImageProviderInfo]>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }

    /**
     Gets available remote images for an item.
     
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter providerName: (query) Optional. The image provider to use. (optional)
     - parameter includeAllLanguages: (query) Optional. Include all languages. (optional, default to false)
     - returns: AnyPublisher<RemoteImageResult, Error>
     */
    #if canImport(Combine)
    @available(macOS 10.15, iOS 13.0, tvOS 13.0, watchOS 6.0, *)
    open class func getRemoteImages(itemId: String, type: ImageType? = nil, startIndex: Int? = nil, limit: Int? = nil, providerName: String? = nil, includeAllLanguages: Bool? = nil) -> AnyPublisher<RemoteImageResult, Error> {
        var requestTask: RequestTask?
        return Future<RemoteImageResult, Error> { promise in
            requestTask = getRemoteImagesWithRequestBuilder(itemId: itemId, type: type, startIndex: startIndex, limit: limit, providerName: providerName, includeAllLanguages: includeAllLanguages).execute { result in
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
     Gets available remote images for an item.
     - GET /Items/{itemId}/RemoteImages
     - API Key:
       - type: apiKey Authorization 
       - name: CustomAuthentication
     - parameter itemId: (path) Item Id. 
     - parameter type: (query) The image type. (optional)
     - parameter startIndex: (query) Optional. The record index to start at. All items with a lower index will be dropped from the results. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter providerName: (query) Optional. The image provider to use. (optional)
     - parameter includeAllLanguages: (query) Optional. Include all languages. (optional, default to false)
     - returns: RequestBuilder<RemoteImageResult> 
     */
    open class func getRemoteImagesWithRequestBuilder(itemId: String, type: ImageType? = nil, startIndex: Int? = nil, limit: Int? = nil, providerName: String? = nil, includeAllLanguages: Bool? = nil) -> RequestBuilder<RemoteImageResult> {
        var localVariablePath = "/Items/{itemId}/RemoteImages"
        let itemIdPreEscape = "\(APIHelper.mapValueToPathItem(itemId))"
        let itemIdPostEscape = itemIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        localVariablePath = localVariablePath.replacingOccurrences(of: "{itemId}", with: itemIdPostEscape, options: .literal, range: nil)
        let localVariableURLString = JellyfinAPIAPI.basePath + localVariablePath
        let localVariableParameters: [String: Any]? = nil

        var localVariableUrlComponents = URLComponents(string: localVariableURLString)
        localVariableUrlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "type": type?.encodeToJSON(),
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "providerName": providerName?.encodeToJSON(),
            "includeAllLanguages": includeAllLanguages?.encodeToJSON(),
        ])

        let localVariableNillableHeaders: [String: Any?] = [
            :
        ]

        let localVariableHeaderParameters = APIHelper.rejectNilHeaders(localVariableNillableHeaders)

        let localVariableRequestBuilder: RequestBuilder<RemoteImageResult>.Type = JellyfinAPIAPI.requestBuilderFactory.getBuilder()

        return localVariableRequestBuilder.init(method: "GET", URLString: (localVariableUrlComponents?.string ?? localVariableURLString), parameters: localVariableParameters, headers: localVariableHeaderParameters)
    }
}
