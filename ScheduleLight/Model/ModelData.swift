//
//  ModelData.swift
//  ScheduleLight
//
//  Created by 松尾祥汰 on 2021/05/23.
//

import Foundation

var scheduleLights: [ScheduleLight] = load("ScheduleLightData.json")

func load<T: Decodable>(_ filename: String) -> T {
    let fileUrl = Bundle.main.url(forResource: filename, withExtension: nil)!
    do {
        let data = try Data(contentsOf: fileUrl)
        let jsonDecoder = JSONDecoder()
        jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
        
        return try jsonDecoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
