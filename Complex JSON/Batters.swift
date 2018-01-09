//
//  Batters.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct Batters {
    let batters : [Batter]
    init?(json: JSON) {
       print(json)
        guard let batterJSON = json["batter"] as? [JSON] else {return nil }
        let batters = batterJSON.map { (Batter(json: $0)!)}
        self.batters = batters
    }
}
