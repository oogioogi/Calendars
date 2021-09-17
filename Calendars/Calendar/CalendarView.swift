//
//  CalendarRow.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

struct CalendarRow: View {
    func overtime(overtime: Int) -> Int {
        return overtime
    }
    //@Binding var isOnTap: Bool
    var daysOfWeek: [String] = ["Sun","Mon","Tue","Wen","Thr","Fri","Sat"]
    var items: [DaySourceData]
   
    @EnvironmentObject var overTimeInfo: OverTimeInfo
    
    var body: some View {
        let width = UIScreen.main.bounds.width / 8

        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                ForEach(daysOfWeek, id: \.self) { dayofweek in
                    DayOfTheWeekView(dayOfWeek: dayofweek)
                        .frame(width: width, height: width)
                }
            }
            
            LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                ForEach(items, id: \.id) {  daysource in
                    DayCell(daySourceData: daysource)
                        .frame(width: width, height: width)
                }
            }
            idText
            DetailCellView(overTime: overTimeInfo.overTime)
        }.padding(.horizontal)
    }
    
    var idText: some View {
        VStack{
            Text("overTime  \(overTimeInfo.overTime)")
            Text("id: ")
        }

    }
}

struct CalendarRow_Previews: PreviewProvider {
    static var daysourceData = SourceDatas().daySourceDatas
    //@Binding var isOnTap: Bool
    static var previews: some View {
        CalendarRow(items: daysourceData)
            .environmentObject(OverTimeInfo())
    }
}
