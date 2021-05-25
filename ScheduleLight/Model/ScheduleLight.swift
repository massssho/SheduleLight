//
//  ScheduleLight.swift
//  ScheduleLight
//
//  Created by 松尾祥汰 on 2021/05/23.
//

import Foundation

struct ScheduleLight: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var room: String
    var start_time: String
    var end_time: String
    var description: String
    var announcement: String
    var document: String
    var zoomurl: String
}
