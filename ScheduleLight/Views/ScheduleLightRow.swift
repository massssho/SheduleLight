//
//  ScheduleLightRow.swift
//  ScheduleLight
//
//  Created by 松尾祥汰 on 2021/05/23.
//

import SwiftUI

struct ScheduleLightRow: View {
    var scheduleLight: ScheduleLight
    
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 20) {
                Text(scheduleLight.start_time)
                    .font(.footnote)
                Text(scheduleLight.end_time)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            .offset(y: 1)
            VStack(alignment: .leading, spacing: 18) {
                Text(scheduleLight.name)
                    .font(.callout)
                Text(scheduleLight.description)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
            Spacer()
            Text(scheduleLight.room)
                .font(.subheadline)
                .foregroundColor(Color(red: 0.0, green: 0.9, blue: 0.85, opacity: 1.0))
        }
        .padding()
    }
}

struct ScheduleLightRow_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ScheduleLightRow(scheduleLight: scheduleLights[0])
            ScheduleLightRow(scheduleLight: scheduleLights[1])
            ScheduleLightRow(scheduleLight: scheduleLights[2])
        }
        .previewLayout(.fixed(width: 400, height: 60))
    }
}
