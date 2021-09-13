//
//  CalendarRow.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

struct CalendarRow: View {
    @State var isOnTap: Bool = false
    var items: [DaySourceData]
    var body: some View {
        let width = UIScreen.main.bounds.width / 7

        VStack {
            LazyVGrid(columns: Array(repeating: GridItem(), count: 7)) {
                ForEach(items, id: \.id) {  daysource in
                    DayCell(daySourceData: daysource)
                        .frame(width: width, height: width)
                }
            }
        }
    }
}

struct CalendarRow_Previews: PreviewProvider {
    static var daysourceData = SourceDatas().daySourceDatas
    static var previews: some View {
        CalendarRow(items: daysourceData)
    }
}
