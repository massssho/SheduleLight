//
//  ScheduleLightList.swift
//  ScheduleLight
//
//  Created by 松尾祥汰 on 2021/05/24.
//

import SwiftUI

struct ScheduleLightList: View {
    
    var body: some View {
        NavigationView {
            List(scheduleLights) { scheduleLight in
                NavigationLink(destination: SchduleLightDetail(scheduleLight: scheduleLight)) {
                    ScheduleLightRow(scheduleLight: scheduleLight)
                }
            }
            .navigationTitle("スケジュール")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
            
struct ScheduleLightList_Previews: PreviewProvider {
    static var previews: some View {
        ScheduleLightList()
    }
}
