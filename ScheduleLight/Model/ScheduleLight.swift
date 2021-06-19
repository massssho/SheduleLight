//
//  ScheduleLight.swift
//  ScheduleLight
//
//  Created by 松尾祥汰 on 2021/05/23.
//

import Foundation

struct ScheduleLight: Hashable, Codable, Identifiable {
    let id: Int
    let name: String
    let room: String
    let startTime: String
    let endTime: String
    let description: String
    let announcement: String
    let document: String
    let zoomurl: String
}
