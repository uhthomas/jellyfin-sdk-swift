//
// YearsAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class YearsAPI {
    /**
     Gets a year.
     
     - parameter year: (path) The year. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getYear(year: Int, userId: UUID? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDto?, _ error: Error?) -> Void)) {
        getYearWithRequestBuilder(year: year, userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a year.
     - GET /Years/{year}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter year: (path) The year. 
     - parameter userId: (query) Optional. Filter by user id, and attach user data. (optional)
     - returns: RequestBuilder<BaseItemDto> 
     */
    open class func getYearWithRequestBuilder(year: Int, userId: UUID? = nil) -> RequestBuilder<BaseItemDto> {
        var path = "/Years/{year}"
        let yearPreEscape = "\(APIHelper.mapValueToPathItem(year))"
        let yearPostEscape = yearPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{year}", with: yearPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "userId": userId?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Get years.
     
     - parameter startIndex: (query) Skips over a given number of items within the results. Use for paging. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter sortOrder: (query) Sort Order - Ascending,Descending. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be included based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - parameter sortBy: (query) Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User Id. (optional)
     - parameter recursive: (query) Search recursively. (optional, default to true)
     - parameter enableImages: (query) Optional. Include image information in output. (optional, default to true)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getYears(startIndex: Int? = nil, limit: Int? = nil, sortOrder: [SortOrder]? = nil, parentId: UUID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, sortBy: [String]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: UUID? = nil, recursive: Bool? = nil, enableImages: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: BaseItemDtoQueryResult?, _ error: Error?) -> Void)) {
        getYearsWithRequestBuilder(startIndex: startIndex, limit: limit, sortOrder: sortOrder, parentId: parentId, fields: fields, excludeItemTypes: excludeItemTypes, includeItemTypes: includeItemTypes, mediaTypes: mediaTypes, sortBy: sortBy, enableUserData: enableUserData, imageTypeLimit: imageTypeLimit, enableImageTypes: enableImageTypes, userId: userId, recursive: recursive, enableImages: enableImages).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Get years.
     - GET /Years
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter startIndex: (query) Skips over a given number of items within the results. Use for paging. (optional)
     - parameter limit: (query) Optional. The maximum number of records to return. (optional)
     - parameter sortOrder: (query) Sort Order - Ascending,Descending. (optional)
     - parameter parentId: (query) Specify this to localize the search to a specific item or folder. Omit to use the root. (optional)
     - parameter fields: (query) Optional. Specify additional fields of information to return in the output. (optional)
     - parameter excludeItemTypes: (query) Optional. If specified, results will be excluded based on item type. This allows multiple, comma delimited. (optional)
     - parameter includeItemTypes: (query) Optional. If specified, results will be included based on item type. This allows multiple, comma delimited. (optional)
     - parameter mediaTypes: (query) Optional. Filter by MediaType. Allows multiple, comma delimited. (optional)
     - parameter sortBy: (query) Optional. Specify one or more sort orders, comma delimited. Options: Album, AlbumArtist, Artist, Budget, CommunityRating, CriticRating, DateCreated, DatePlayed, PlayCount, PremiereDate, ProductionYear, SortName, Random, Revenue, Runtime. (optional)
     - parameter enableUserData: (query) Optional. Include user data. (optional)
     - parameter imageTypeLimit: (query) Optional. The max number of images to return, per image type. (optional)
     - parameter enableImageTypes: (query) Optional. The image types to include in the output. (optional)
     - parameter userId: (query) User Id. (optional)
     - parameter recursive: (query) Search recursively. (optional, default to true)
     - parameter enableImages: (query) Optional. Include image information in output. (optional, default to true)
     - returns: RequestBuilder<BaseItemDtoQueryResult> 
     */
    open class func getYearsWithRequestBuilder(startIndex: Int? = nil, limit: Int? = nil, sortOrder: [SortOrder]? = nil, parentId: UUID? = nil, fields: [ItemFields]? = nil, excludeItemTypes: [String]? = nil, includeItemTypes: [String]? = nil, mediaTypes: [String]? = nil, sortBy: [String]? = nil, enableUserData: Bool? = nil, imageTypeLimit: Int? = nil, enableImageTypes: [ImageType]? = nil, userId: UUID? = nil, recursive: Bool? = nil, enableImages: Bool? = nil) -> RequestBuilder<BaseItemDtoQueryResult> {
        let path = "/Years"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "startIndex": startIndex?.encodeToJSON(),
            "limit": limit?.encodeToJSON(),
            "sortOrder": sortOrder?.encodeToJSON(),
            "parentId": parentId?.encodeToJSON(),
            "fields": fields?.encodeToJSON(),
            "excludeItemTypes": excludeItemTypes?.encodeToJSON(),
            "includeItemTypes": includeItemTypes?.encodeToJSON(),
            "mediaTypes": mediaTypes?.encodeToJSON(),
            "sortBy": sortBy?.encodeToJSON(),
            "enableUserData": enableUserData?.encodeToJSON(),
            "imageTypeLimit": imageTypeLimit?.encodeToJSON(),
            "enableImageTypes": enableImageTypes?.encodeToJSON(),
            "userId": userId?.encodeToJSON(),
            "recursive": recursive?.encodeToJSON(),
            "enableImages": enableImages?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<BaseItemDtoQueryResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
