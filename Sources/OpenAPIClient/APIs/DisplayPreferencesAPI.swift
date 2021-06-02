//
// DisplayPreferencesAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class DisplayPreferencesAPI {
    /**
     Get Display Preferences.
     
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User id. 
     - parameter client: (query) Client. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getDisplayPreferences(displayPreferencesId: String, userId: UUID, client: String, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: DisplayPreferencesDto?, _ error: Error?) -> Void)) {
        getDisplayPreferencesWithRequestBuilder(displayPreferencesId: displayPreferencesId, userId: userId, client: client).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get Display Preferences.
     - GET /DisplayPreferences/{displayPreferencesId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User id. 
     - parameter client: (query) Client. 
     - returns: RequestBuilder<DisplayPreferencesDto> 
     */
    open class func getDisplayPreferencesWithRequestBuilder(displayPreferencesId: String, userId: UUID, client: String) -> RequestBuilder<DisplayPreferencesDto> {
        var path = "/DisplayPreferences/{displayPreferencesId}"
        let displayPreferencesIdPreEscape = "\(APIHelper.mapValueToPathItem(displayPreferencesId))"
        let displayPreferencesIdPostEscape = displayPreferencesIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{displayPreferencesId}", with: displayPreferencesIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId.encodeToJSON(),
            "client": client.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<DisplayPreferencesDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Update Display Preferences.
     
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User Id. 
     - parameter client: (query) Client. 
     - parameter displayPreferencesDto: (body) New Display Preferences object. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateDisplayPreferences(displayPreferencesId: String, userId: UUID, client: String, displayPreferencesDto: DisplayPreferencesDto, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateDisplayPreferencesWithRequestBuilder(displayPreferencesId: displayPreferencesId, userId: userId, client: client, displayPreferencesDto: displayPreferencesDto).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Update Display Preferences.
     - POST /DisplayPreferences/{displayPreferencesId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter displayPreferencesId: (path) Display preferences id. 
     - parameter userId: (query) User Id. 
     - parameter client: (query) Client. 
     - parameter displayPreferencesDto: (body) New Display Preferences object. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateDisplayPreferencesWithRequestBuilder(displayPreferencesId: String, userId: UUID, client: String, displayPreferencesDto: DisplayPreferencesDto) -> RequestBuilder<Void> {
        var path = "/DisplayPreferences/{displayPreferencesId}"
        let displayPreferencesIdPreEscape = "\(APIHelper.mapValueToPathItem(displayPreferencesId))"
        let displayPreferencesIdPostEscape = displayPreferencesIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{displayPreferencesId}", with: displayPreferencesIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: displayPreferencesDto)

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId.encodeToJSON(),
            "client": client.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}