//
// UserAPI.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation

open class UserAPI {
    /**
     Authenticates a user.
     
     - parameter userId: (path) The user id. 
     - parameter pw: (query) The password as plain text. 
     - parameter password: (query) The password sha1-hash. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authenticateUser(userId: UUID, pw: String, password: String? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthenticationResult?, _ error: Error?) -> Void)) {
        authenticateUserWithRequestBuilder(userId: userId, pw: pw, password: password).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Authenticates a user.
     - POST /Users/{userId}/Authenticate
     - parameter userId: (path) The user id. 
     - parameter pw: (query) The password as plain text. 
     - parameter password: (query) The password sha1-hash. (optional)
     - returns: RequestBuilder<AuthenticationResult> 
     */
    open class func authenticateUserWithRequestBuilder(userId: UUID, pw: String, password: String? = nil) -> RequestBuilder<AuthenticationResult> {
        var path = "/Users/{userId}/Authenticate"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "pw": pw.encodeToJSON(),
            "password": password?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Authenticates a user by name.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authenticateUserByName(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthenticationResult?, _ error: Error?) -> Void)) {
        authenticateUserByNameWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Authenticates a user by name.
     - POST /Users/AuthenticateByName
     - parameter UNKNOWN_BASE_TYPE: (body) The M:Jellyfin.Api.Controllers.UserController.AuthenticateUserByName(Jellyfin.Api.Models.UserDtos.AuthenticateUserByName) request. 
     - returns: RequestBuilder<AuthenticationResult> 
     */
    open class func authenticateUserByNameWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<AuthenticationResult> {
        let path = "/Users/AuthenticateByName"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Authenticates a user with quick connect.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The Jellyfin.Api.Models.UserDtos.QuickConnectDto request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func authenticateWithQuickConnect(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: AuthenticationResult?, _ error: Error?) -> Void)) {
        authenticateWithQuickConnectWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Authenticates a user with quick connect.
     - POST /Users/AuthenticateWithQuickConnect
     - parameter UNKNOWN_BASE_TYPE: (body) The Jellyfin.Api.Models.UserDtos.QuickConnectDto request. 
     - returns: RequestBuilder<AuthenticationResult> 
     */
    open class func authenticateWithQuickConnectWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<AuthenticationResult> {
        let path = "/Users/AuthenticateWithQuickConnect"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<AuthenticationResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Creates a user.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The create user by name request body. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func createUserByName(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserDto?, _ error: Error?) -> Void)) {
        createUserByNameWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Creates a user.
     - POST /Users/New
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter UNKNOWN_BASE_TYPE: (body) The create user by name request body. 
     - returns: RequestBuilder<UserDto> 
     */
    open class func createUserByNameWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<UserDto> {
        let path = "/Users/New"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Deletes a user.
     
     - parameter userId: (path) The user id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func deleteUser(userId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        deleteUserWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Deletes a user.
     - DELETE /Users/{userId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - returns: RequestBuilder<Void> 
     */
    open class func deleteUserWithRequestBuilder(userId: UUID) -> RequestBuilder<Void> {
        var path = "/Users/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Initiates the forgot password process for a local user.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The forgot password request containing the entered username. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func forgotPassword(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: ForgotPasswordResult?, _ error: Error?) -> Void)) {
        forgotPasswordWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Initiates the forgot password process for a local user.
     - POST /Users/ForgotPassword
     - parameter UNKNOWN_BASE_TYPE: (body) The forgot password request containing the entered username. 
     - returns: RequestBuilder<ForgotPasswordResult> 
     */
    open class func forgotPasswordWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<ForgotPasswordResult> {
        let path = "/Users/ForgotPassword"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<ForgotPasswordResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Redeems a forgot password pin.
     
     - parameter UNKNOWN_BASE_TYPE: (body) The forgot password pin request containing the entered pin. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func forgotPasswordPin(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: PinRedeemResult?, _ error: Error?) -> Void)) {
        forgotPasswordPinWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Redeems a forgot password pin.
     - POST /Users/ForgotPassword/Pin
     - parameter UNKNOWN_BASE_TYPE: (body) The forgot password pin request containing the entered pin. 
     - returns: RequestBuilder<PinRedeemResult> 
     */
    open class func forgotPasswordPinWithRequestBuilder(UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<PinRedeemResult> {
        let path = "/Users/ForgotPassword/Pin"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PinRedeemResult>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets the user based on auth token.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getCurrentUser(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserDto?, _ error: Error?) -> Void)) {
        getCurrentUserWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets the user based on auth token.
     - GET /Users/Me
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - returns: RequestBuilder<UserDto> 
     */
    open class func getCurrentUserWithRequestBuilder() -> RequestBuilder<UserDto> {
        let path = "/Users/Me"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of publicly visible users for display on a login screen.
     
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getPublicUsers(apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [UserDto]?, _ error: Error?) -> Void)) {
        getPublicUsersWithRequestBuilder().execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a list of publicly visible users for display on a login screen.
     - GET /Users/Public
     - returns: RequestBuilder<[UserDto]> 
     */
    open class func getPublicUsersWithRequestBuilder() -> RequestBuilder<[UserDto]> {
        let path = "/Users/Public"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[UserDto]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a user by Id.
     
     - parameter userId: (path) The user id. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUserById(userId: UUID, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: UserDto?, _ error: Error?) -> Void)) {
        getUserByIdWithRequestBuilder(userId: userId).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a user by Id.
     - GET /Users/{userId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - returns: RequestBuilder<UserDto> 
     */
    open class func getUserByIdWithRequestBuilder(userId: UUID) -> RequestBuilder<UserDto> {
        var path = "/Users/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<UserDto>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Gets a list of users.
     
     - parameter isHidden: (query) Optional filter by IsHidden&#x3D;true or false. (optional)
     - parameter isDisabled: (query) Optional filter by IsDisabled&#x3D;true or false. (optional)
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func getUsers(isHidden: Bool? = nil, isDisabled: Bool? = nil, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: [UserDto]?, _ error: Error?) -> Void)) {
        getUsersWithRequestBuilder(isHidden: isHidden, isDisabled: isDisabled).execute(apiResponseQueue) { result -> Void in
            switch result {
            case let .success(response):
                completion(response.body, nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Gets a list of users.
     - GET /Users
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter isHidden: (query) Optional filter by IsHidden&#x3D;true or false. (optional)
     - parameter isDisabled: (query) Optional filter by IsDisabled&#x3D;true or false. (optional)
     - returns: RequestBuilder<[UserDto]> 
     */
    open class func getUsersWithRequestBuilder(isHidden: Bool? = nil, isDisabled: Bool? = nil) -> RequestBuilder<[UserDto]> {
        let path = "/Users"
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters: [String: Any]? = nil

        var urlComponents = URLComponents(string: URLString)
        urlComponents?.queryItems = APIHelper.mapValuesToQueryItems([
            "isHidden": isHidden?.encodeToJSON(),
            "isDisabled": isDisabled?.encodeToJSON(),
        ])

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<[UserDto]>.Type = OpenAPIClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user.
     
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The updated user model. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUser(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateUserWithRequestBuilder(userId: userId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a user.
     - POST /Users/{userId}
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The updated user model. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserWithRequestBuilder(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        var path = "/Users/{userId}"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user configuration.
     
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The new user configuration. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserConfiguration(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateUserConfigurationWithRequestBuilder(userId: userId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a user configuration.
     - POST /Users/{userId}/Configuration
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The new user configuration. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserConfigurationWithRequestBuilder(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        var path = "/Users/{userId}/Configuration"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user's easy password.
     
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserEasyPassword(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateUserEasyPasswordWithRequestBuilder(userId: userId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a user's easy password.
     - POST /Users/{userId}/EasyPassword
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserEasyPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserEasyPassword) request. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserEasyPasswordWithRequestBuilder(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        var path = "/Users/{userId}/EasyPassword"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user's password.
     
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserPassword(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateUserPasswordWithRequestBuilder(userId: userId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a user's password.
     - POST /Users/{userId}/Password
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The M:Jellyfin.Api.Controllers.UserController.UpdateUserPassword(System.Guid,Jellyfin.Api.Models.UserDtos.UpdateUserPassword) request. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserPasswordWithRequestBuilder(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        var path = "/Users/{userId}/Password"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

    /**
     Updates a user policy.
     
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The new user policy. 
     - parameter apiResponseQueue: The queue on which api response is dispatched.
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func updateUserPolicy(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE, apiResponseQueue: DispatchQueue = OpenAPIClientAPI.apiResponseQueue, completion: @escaping ((_ data: Void?, _ error: Error?) -> Void)) {
        updateUserPolicyWithRequestBuilder(userId: userId, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE).execute(apiResponseQueue) { result -> Void in
            switch result {
            case .success:
                completion((), nil)
            case let .failure(error):
                completion(nil, error)
            }
        }
    }

    /**
     Updates a user policy.
     - POST /Users/{userId}/Policy
     - API Key:
       - type: apiKey X-Emby-Authorization 
       - name: CustomAuthentication
     - parameter userId: (path) The user id. 
     - parameter UNKNOWN_BASE_TYPE: (body) The new user policy. 
     - returns: RequestBuilder<Void> 
     */
    open class func updateUserPolicyWithRequestBuilder(userId: UUID, UNKNOWN_BASE_TYPE: UNKNOWN_BASE_TYPE) -> RequestBuilder<Void> {
        var path = "/Users/{userId}/Policy"
        let userIdPreEscape = "\(APIHelper.mapValueToPathItem(userId))"
        let userIdPostEscape = userIdPreEscape.addingPercentEncoding(withAllowedCharacters: .urlPathAllowed) ?? ""
        path = path.replacingOccurrences(of: "{userId}", with: userIdPostEscape, options: .literal, range: nil)
        let URLString = OpenAPIClientAPI.basePath + path
        let parameters = JSONEncodingHelper.encodingParameters(forEncodableObject: UNKNOWN_BASE_TYPE)

        let urlComponents = URLComponents(string: URLString)

        let nillableHeaders: [String: Any?] = [
            :
        ]

        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Void>.Type = OpenAPIClientAPI.requestBuilderFactory.getNonDecodableBuilder()

        return requestBuilder.init(method: "POST", URLString: (urlComponents?.string ?? URLString), parameters: parameters, headers: headerParameters)
    }

}
