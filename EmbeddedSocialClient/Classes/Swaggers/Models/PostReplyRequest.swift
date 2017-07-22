//
// PostReplyRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Request to post (create) reply */
open class PostReplyRequest: JSONEncodable {

    /** Gets or sets reply text */
    public var text: String?
    /** Gets or sets reply language */
    public var language: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["text"] = self.text
        nillableDictionary["language"] = self.language

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
