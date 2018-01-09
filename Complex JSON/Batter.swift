//
//  Batter.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct Batter {
    let id : String
    let type: String
    init?(json: JSON){
        print(json)
        guard let id = json["id"] as? String,
              let type = json["type"] as? String
            else {return nil} 
        self.id = id
        self.type = type
    }
}
