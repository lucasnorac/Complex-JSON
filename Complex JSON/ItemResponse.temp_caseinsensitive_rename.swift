//
//  itemResponse.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct itemResponse {
    init?(json: JSON) {
        guard let items = json["items"] as? JSON else {return nil}
        print(items)
    }
}
