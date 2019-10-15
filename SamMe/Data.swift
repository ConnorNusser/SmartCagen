//
//  Data.swift
//  SamMe
//
//  Created by Connor Mclemore on 10/11/19.
//  Copyright © 2019 ByteMe. All rights reserved.
//

import Foundation

func load<T:Decodable> ( filename:String, as type:T.Type = T.self) -> T{
    let data:Data
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
        else{
            fatalError("Couldn't find \(filename) in main bundle.")
    }

do {
    data = try Data(contentsOf: file)
}catch{
    fatalError("Couldn't find \(filename) in main bundle:\n\(error)")
}
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
