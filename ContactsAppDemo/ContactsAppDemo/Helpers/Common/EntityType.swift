//
//  EntityType.swift
//  ContactsAppDemo
//
//  Created by Shubham Gupta on 10/6/19.
//  Copyright © 2019 Shubham Gupta. All rights reserved.
//

import Foundation

protocol EntityType: Codable {
    func encodeObject() throws -> String
    static func decodeObject<T: Decodable>(withData data: Data) throws -> T
}

extension EntityType {
    
    func encodeObject() throws -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        guard let data = try? encoder.encode(self), let printableValue = String(data: data, encoding: .utf8) else { throw NSError.createError(withMessage: "error") }
        return printableValue
    }
    
    static func decodeObject<T: Decodable>(withData data: Data) throws -> T {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    }
}
