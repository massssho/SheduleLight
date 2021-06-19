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
                Rectangle()
                    .stroke(lineWidth: 3)
                    .fill(Color(red: 0.0, green: 0.9, blue: 0.85, opacity: 1.0))
                    .frame(width: 1)
                VStack {
                    ScheduleLightRow(scheduleLight: scheduleLight)
                    NavigationLink(destination: SchduleLightDetail(scheduleLight: scheduleLight)) {
                    }
                    .hidden()
                    Spacer()
                }
            }
            .navigationTitle("スケジュール")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}
            
struct ScheduleLightList_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScheduleLightList()
                
                
        }
    }
}
