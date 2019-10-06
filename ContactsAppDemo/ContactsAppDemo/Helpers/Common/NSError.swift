//
//  NSError.swift
//  ContactsAppDemo
//
//  Created by Shubham Gupta on 10/6/19.
//  Copyright © 2019 Shubham Gupta. All rights reserved.
//

import Foundation

extension NSError {
    static func createError(withMessage message: String) -> NSError {
        return NSError(domain: "", code: 0, userInfo: [NSLocalizedDescriptionKey: message])
    }
}
