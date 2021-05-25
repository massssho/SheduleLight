//
//  SchduleLightDetail.swift
//  ScheduleLight
//
//  Created by 松尾祥汰 on 2021/05/24.
//

import SwiftUI

struct SchduleLightDetail: View {
    var scheduleLight: ScheduleLight
    
    var body: some View {
        List {
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("アナウンスメント")
                        .font(.callout)
                    Text(scheduleLight.announcement)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("講義スライド")
                        .font(.callout)
                    Text(scheduleLight.document)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
            
            HStack {
                VStack(alignment: .leading, spacing: 8) {
                    Text("zoom録画")
                        .font(.callout)
                    Text(scheduleLight.zoomurl)
                        .font(.caption)
                        .foregroundColor(.secondary)
                }
                Spacer()
            }
        }
        .navigationTitle(scheduleLight.name)
    }
}

struct SchduleLightDetail_Previews: PreviewProvider {
    static var previews: some View {
        SchduleLightDetail(scheduleLight: scheduleLights[0])
    }
}
