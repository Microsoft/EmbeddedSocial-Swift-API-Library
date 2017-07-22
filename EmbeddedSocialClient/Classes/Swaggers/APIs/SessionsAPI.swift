//
// SessionsAPI.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation
import Alamofire


open class SessionsAPI: APIBase {
    /**
     * enum for parameter identityProvider
     */
    public enum IdentityProvider_requestTokensGetRequestToken: String { 
        case facebook = "Facebook"
        case microsoft = "Microsoft"
        case google = "Google"
        case twitter = "Twitter"
        case aads2s = "AADS2S"
        case socialPlus = "SocialPlus"
    }

    /**
     Get request token
     - parameter identityProvider: (path) Identity provider type 
     - parameter authorization: (header) Format is: \&quot;Scheme CredentialsList\&quot;. Possible values are:  - Anon AK&#x3D;AppKey  - SocialPlus TK&#x3D;SessionToken  - Facebook AK&#x3D;AppKey|TK&#x3D;AccessToken  - Google AK&#x3D;AppKey|TK&#x3D;AccessToken  - Twitter AK&#x3D;AppKey|RT&#x3D;RequestToken|TK&#x3D;AccessToken  - Microsoft AK&#x3D;AppKey|TK&#x3D;AccessToken  - AADS2S AK&#x3D;AppKey|[UH&#x3D;UserHandle]|TK&#x3D;AADToken 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func requestTokensGetRequestToken(identityProvider: IdentityProvider_requestTokensGetRequestToken, authorization: String, completion: @escaping ((_ data: GetRequestTokenResponse?, _ error: ErrorResponse?) -> Void)) {
        requestTokensGetRequestTokenWithRequestBuilder(identityProvider: identityProvider, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Get request token
     - GET /v0.7/request_tokens/{identityProvider}

     - examples: [{contentType=application/json, example={
  "requestToken" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <requestToken>aeiou</requestToken>
</null>}]
     - examples: [{contentType=application/json, example={
  "requestToken" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <requestToken>aeiou</requestToken>
</null>}]
     - parameter identityProvider: (path) Identity provider type 
     - parameter authorization: (header) Format is: \&quot;Scheme CredentialsList\&quot;. Possible values are:  - Anon AK&#x3D;AppKey  - SocialPlus TK&#x3D;SessionToken  - Facebook AK&#x3D;AppKey|TK&#x3D;AccessToken  - Google AK&#x3D;AppKey|TK&#x3D;AccessToken  - Twitter AK&#x3D;AppKey|RT&#x3D;RequestToken|TK&#x3D;AccessToken  - Microsoft AK&#x3D;AppKey|TK&#x3D;AccessToken  - AADS2S AK&#x3D;AppKey|[UH&#x3D;UserHandle]|TK&#x3D;AADToken 
     - returns: RequestBuilder<GetRequestTokenResponse> 
     */
    open class func requestTokensGetRequestTokenWithRequestBuilder(identityProvider: IdentityProvider_requestTokensGetRequestToken, authorization: String) -> RequestBuilder<GetRequestTokenResponse> {
        var path = "/v0.7/request_tokens/{identityProvider}"
        path = path.replacingOccurrences(of: "{identityProvider}", with: "\(identityProvider.rawValue)", options: .literal, range: nil)
        let URLString = EmbeddedSocialClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<GetRequestTokenResponse>.Type = EmbeddedSocialClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "GET", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Delete the current session (sign out)
     - parameter authorization: (header) Format is: \&quot;Scheme CredentialsList\&quot;. Possible values are:  - Anon AK&#x3D;AppKey  - SocialPlus TK&#x3D;SessionToken  - Facebook AK&#x3D;AppKey|TK&#x3D;AccessToken  - Google AK&#x3D;AppKey|TK&#x3D;AccessToken  - Twitter AK&#x3D;AppKey|RT&#x3D;RequestToken|TK&#x3D;AccessToken  - Microsoft AK&#x3D;AppKey|TK&#x3D;AccessToken  - AADS2S AK&#x3D;AppKey|[UH&#x3D;UserHandle]|TK&#x3D;AADToken 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sessionsDeleteSession(authorization: String, completion: @escaping ((_ data: Object?, _ error: ErrorResponse?) -> Void)) {
        sessionsDeleteSessionWithRequestBuilder(authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Delete the current session (sign out)
     - DELETE /v0.7/sessions/current

     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     - examples: [{contentType=application/json, example={ }}, {contentType=application/xml, example=<null>
</null>}]
     - parameter authorization: (header) Format is: \&quot;Scheme CredentialsList\&quot;. Possible values are:  - Anon AK&#x3D;AppKey  - SocialPlus TK&#x3D;SessionToken  - Facebook AK&#x3D;AppKey|TK&#x3D;AccessToken  - Google AK&#x3D;AppKey|TK&#x3D;AccessToken  - Twitter AK&#x3D;AppKey|RT&#x3D;RequestToken|TK&#x3D;AccessToken  - Microsoft AK&#x3D;AppKey|TK&#x3D;AccessToken  - AADS2S AK&#x3D;AppKey|[UH&#x3D;UserHandle]|TK&#x3D;AADToken 
     - returns: RequestBuilder<Object> 
     */
    open class func sessionsDeleteSessionWithRequestBuilder(authorization: String) -> RequestBuilder<Object> {
        let path = "/v0.7/sessions/current"
        let URLString = EmbeddedSocialClientAPI.basePath + path
        let parameters: [String:Any]? = nil

        let url = NSURLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<Object>.Type = EmbeddedSocialClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "DELETE", URLString: (url?.string ?? URLString), parameters: parameters, isBody: false, headers: headerParameters)
    }

    /**
     Create a new session (sign in)
     - parameter request: (body) Post session request 
     - parameter authorization: (header) Format is: \&quot;Scheme CredentialsList\&quot;. Possible values are:  - Anon AK&#x3D;AppKey  - SocialPlus TK&#x3D;SessionToken  - Facebook AK&#x3D;AppKey|TK&#x3D;AccessToken  - Google AK&#x3D;AppKey|TK&#x3D;AccessToken  - Twitter AK&#x3D;AppKey|RT&#x3D;RequestToken|TK&#x3D;AccessToken  - Microsoft AK&#x3D;AppKey|TK&#x3D;AccessToken  - AADS2S AK&#x3D;AppKey|[UH&#x3D;UserHandle]|TK&#x3D;AADToken 
     - parameter completion: completion handler to receive the data and the error objects
     */
    open class func sessionsPostSession(request: PostSessionRequest, authorization: String, completion: @escaping ((_ data: PostSessionResponse?, _ error: ErrorResponse?) -> Void)) {
        sessionsPostSessionWithRequestBuilder(request: request, authorization: authorization).execute { (response, error) -> Void in
            completion(response?.body, error)
        }
    }


    /**
     Create a new session (sign in)
     - POST /v0.7/sessions

     - examples: [{contentType=application/json, example={
  "userHandle" : "aeiou",
  "sessionToken" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <userHandle>aeiou</userHandle>
  <sessionToken>aeiou</sessionToken>
</null>}]
     - examples: [{contentType=application/json, example={
  "userHandle" : "aeiou",
  "sessionToken" : "aeiou"
}}, {contentType=application/xml, example=<null>
  <userHandle>aeiou</userHandle>
  <sessionToken>aeiou</sessionToken>
</null>}]
     - parameter request: (body) Post session request 
     - parameter authorization: (header) Format is: \&quot;Scheme CredentialsList\&quot;. Possible values are:  - Anon AK&#x3D;AppKey  - SocialPlus TK&#x3D;SessionToken  - Facebook AK&#x3D;AppKey|TK&#x3D;AccessToken  - Google AK&#x3D;AppKey|TK&#x3D;AccessToken  - Twitter AK&#x3D;AppKey|RT&#x3D;RequestToken|TK&#x3D;AccessToken  - Microsoft AK&#x3D;AppKey|TK&#x3D;AccessToken  - AADS2S AK&#x3D;AppKey|[UH&#x3D;UserHandle]|TK&#x3D;AADToken 
     - returns: RequestBuilder<PostSessionResponse> 
     */
    open class func sessionsPostSessionWithRequestBuilder(request: PostSessionRequest, authorization: String) -> RequestBuilder<PostSessionResponse> {
        let path = "/v0.7/sessions"
        let URLString = EmbeddedSocialClientAPI.basePath + path
        let parameters = request.encodeToJSON() as? [String:AnyObject]

        let url = NSURLComponents(string: URLString)
        let nillableHeaders: [String: Any?] = [
            "Authorization": authorization
        ]
        let headerParameters = APIHelper.rejectNilHeaders(nillableHeaders)

        let requestBuilder: RequestBuilder<PostSessionResponse>.Type = EmbeddedSocialClientAPI.requestBuilderFactory.getBuilder()

        return requestBuilder.init(method: "POST", URLString: (url?.string ?? URLString), parameters: parameters, isBody: true, headers: headerParameters)
    }

}
