//
//  DayCellView2.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/17.
//

import SwiftUI

struct DayCellView2: View {
    @State private var isOnTap: Bool = false
    @State private var dayText: Int = 0
    @EnvironmentObject var overTimeInfo: OverTimeInfo
    var daySourceData: DaySourceData
    var body: some View {
        GeometryReader { geometry in
            VStack {
                Button(action: actionCode, label: {
                    contents(g: geometry)
                })
            }
        }
    }
    
    private func contents(g: GeometryProxy) -> some View{
        ZStack {
            Circle()
                .frame(width: g.size.width, height: g.size.width)
                .opacity(isOnTap ? 0.5: 0.2)
                .scaleEffect(isOnTap ? 1.2 : 1.0).animation(.easeInOut)
            Text("\(daySourceData.dayText)")
                .font(.system(size: g.size.width / 2,
                              weight: .bold,
                              design: .rounded))
            Text("\(daySourceData.overTime)") // over time 일때는 핑크색 이며 + 기호 추가
                .foregroundColor(.pink)
                .font(.system(size: g.size.width / 4,
                              weight: .heavy,
                              design: .rounded))
                .offset(x: 0, y: g.size.width / 3)
        }
        
    }
    private func actionCode() -> Void {
        isOnTap.toggle()
        if isOnTap {
            overTimeInfo.overTime = daySourceData.overTime
        }
    }
}

struct DayCellView2_Previews: PreviewProvider {
    @State static var isOnTap: Bool = false
    static var previews: some View {
        DayCellView2(daySourceData: SourceDatas().daySourceDatas[0])
            .environmentObject(OverTimeInfo())
    }
}
