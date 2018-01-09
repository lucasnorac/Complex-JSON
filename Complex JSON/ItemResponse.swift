//
//  itemResponse.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

struct ItemResponse {
    let items : [Item]
    init?(json: JSON) {
        guard let items = json["items"] as? JSON
            else {return nil}
        guard let itemArray = items["item"] as? [JSON]
        else {return nil}
        print(itemArray)
        let itemObject = itemArray.map{(Item(json: $0)!)}
        self.items = itemObject
    }
}
