//
//  DayCell.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

struct DayCell: View {
    
    @State private var isOnTap: Bool = false
    @State private var dayText: Int = 0
    @EnvironmentObject var overTimeInfo: OverTimeInfo
    var daySourceData: DaySourceData
    
    var body: some View {
        GeometryReader { geometry in
            //ZStack {
                Button(action: actionCode, label: {
                    buttonImages
                })
            //}
        }
        //.frame(height: UIScreen.main.bounds.width)
    }
    
    private func actionCode() -> Void {
        isOnTap.toggle()
        if isOnTap {
            overTimeInfo.overTime = daySourceData.overTime
        }
    }
    
    var buttonImages: some View {
        GeometryReader { geometry in
            ZStack {
                circle
                    .frame(width: geometry.size.width,
                           height: geometry.size.width)
                dataText
                    .font(.system(size: geometry.size.width / 2,
                                  weight: .bold,
                                  design: .rounded))
                overtimeText
                    .font(.system(size: geometry.size.width / 4,
                                  weight: .heavy,
                                  design: .rounded))
                    .offset(x: 0, y: geometry.size.width / 3)
            }
            
        }
    }
    
    var circle: some View {
        Circle()
            .foregroundColor(isOnTap ? .blue: .gray)
            .opacity(isOnTap ? 0.5: 0.2)
            .scaleEffect(isOnTap ? 1.2 : 1.0).animation(.easeInOut)
    }
    
    var dataText: some View {
        Text("\(daySourceData.dayText)")
            .scaleEffect(isOnTap ? 1.2 : 1.0).animation(.easeInOut)
    }
    
    var overtimeText: some View {
        Text("\(daySourceData.overTime)") // over time 일때는 핑크색 이며 + 기호 추가
            .foregroundColor(.pink)
    }
    
}

struct DayCell_Previews: PreviewProvider {
    @State static var isOnTap: Bool = false
    static var previews: some View {
        DayCell(daySourceData: SourceDatas().daySourceDatas[0])
            .environmentObject(OverTimeInfo())
    }
}

/*
 .alert(isPresented: $isOnTap, content: {
     Alert(title: Text("Alert Box"), message: Text("\(daySourceData.dayText)"), dismissButton: .cancel())
 })
 */
