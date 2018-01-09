//
//  DataServices.swift
//  Complex JSON
//
//  Created by Lucas Caron Albarello on 23/12/2017.
//  Copyright © 2017 Lucas Caron Albarello. All rights reserved.
//

import Foundation

typealias JSON = [String: Any]

class DataServices {
    private init (){}
    static let shared = DataServices()
    
    func getData(completion: (Data)-> Void){
        guard let path = Bundle.main.path(forResource: "complexjson", ofType: "txt") else {return}
        let url = URL(fileURLWithPath: path)
        do {
            let data = try Data(contentsOf: url)
            completion(data)
        } catch  {
            print(error)
        }
    }
}
