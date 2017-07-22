//
// FeedResponseActivityView.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** Feed response */
open class FeedResponseActivityView: JSONEncodable {

    /** Gets or sets feed data */
    public var data: [ActivityView]?
    /** Gets or sets feed cursor */
    public var cursor: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        nillableDictionary["cursor"] = self.cursor

        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
