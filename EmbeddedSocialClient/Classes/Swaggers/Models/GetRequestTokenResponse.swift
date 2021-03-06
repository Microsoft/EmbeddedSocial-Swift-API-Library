//
// GetRequestTokenResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Response from get request token response */
open class GetRequestTokenResponse: JSONEncodable {

    /** Gets or sets request token from identity provider */
    public var requestToken: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["requestToken"] = self.requestToken

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
