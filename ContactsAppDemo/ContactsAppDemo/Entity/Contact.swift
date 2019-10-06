//
//  Contact.swift
//  ContactsAppDemo
//
//  Created by Shubham Gupta on 10/6/19.
//  Copyright © 2019 Shubham Gupta. All rights reserved.
//

import Foundation

struct Contact: EntityType {
    var id: Int!
    var first_name: String?
    var last_name: String?
    var profile_pic: String?
    var favorite: Bool? = false
    var url: String?
}
