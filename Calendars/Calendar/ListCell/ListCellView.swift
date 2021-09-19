//
//  ListCellView.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/19.
//

import SwiftUI

struct ListCellView: View {
    
    var items: [DaySourceData]
    
    var body: some View {
        List {
            //Text("Over Times").font(.system(size: 30.0, weight: .bold, design: .rounded))
            ForEach(items, id: \.id) { item in
                Section(header: SectionHeader(item: item)) {
                    VStack {
                        Text("Day Text   \(item.dayText)")
                        Text("Over Time  \(item.overTime)")
                    }
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
    }
    
    func SectionHeader(item: DaySourceData) -> some View {
        HStack {
            Text("\(item.id) 일")
                .font(.system(size: 15.0, weight: .bold, design: .rounded))
            Spacer()
            Image(systemName: "rectangle.and.pencil.and.ellipsis")
                .onTapGesture {
                    
                }
        }
    }
}

struct ListCellView_Previews: PreviewProvider {
    static var daysourceData = SourceDatas().daySourceDatas
    static var previews: some View {
        ListCellView(items: daysourceData)
    }
}


/*
 List(items, id: \.id) { item in
     Text(item.id.description)
 }
 */
