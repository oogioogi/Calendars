//
//  CalendarRow.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

struct CalendarView: View {
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
            }.padding(.top, 10)
            
            LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                ForEach(items, id: \.id) {  daysource in
                    DayCell(daySourceData: daysource)
                    //DayCellView2(daySourceData: daysource)
                        //.frame(width: width, height: width)
                        .frame(idealWidth: width, maxWidth: width, idealHeight: width, maxHeight: width)
                }
            }
            DetailCellView(overTime: overTimeInfo.overTime)
                .padding(.top)
        }.padding(.horizontal)
    }
}

struct CalendarRow_Previews: PreviewProvider {
    static var daysourceData = SourceDatas().daySourceDatas
    //@Binding var isOnTap: Bool
    static var previews: some View {
        CalendarView(items: daysourceData)
            .environmentObject(OverTimeInfo())
    }
}
