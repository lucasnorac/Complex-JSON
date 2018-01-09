//
//  BatterType.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct BatterType{
    let id : String
    let type : String
    init?(json: JSON){
        guard let id = json["id"] as? String,
        let type = json["type"] as? String
        else { return nil}
        self.type = type
        self.id = id
    }
}
