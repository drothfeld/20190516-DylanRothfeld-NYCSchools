//
//  JSONSerializationErrors.swift
//  20190516-DylanRothfeld-NYCSchools
//
//  Created by Dylan Rothfeld on 5/16/19.
//  Copyright © 2019 Dylan Rothfeld. All rights reserved.
//

// JSON intializer error handeling
enum SerializationError: Error {
    case missing(String)
    case invalid(String, Any)
}
