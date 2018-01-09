//
//  Item.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct Item {
    let batters : Batters
    init?(json: JSON){
        guard let battersJSON = json["batters"] as? JSON else {return nil}
        self.batters = Batters(json: battersJSON)!
    }
}
