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
    var daySourceData: DaySourceData
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Circle()
                    .foregroundColor(isOnTap ? .pink : .gray)
                Text("\(daySourceData.dayText)")
                    .font(.system(size: geometry.size.width / 2 ))
            }
            .onTapGesture {
                isOnTap.toggle()
            }
        }
    }
    
}


struct DayCell_Previews: PreviewProvider {
    @State static var isOnTap: Bool = false
    static var previews: some View {
        DayCell(daySourceData: SourceDatas().daySourceDatas[0])
    }
}

/*
 .alert(isPresented: $isOnTap, content: {
     Alert(title: Text("Alert Box"), message: Text("\(daySourceData.dayText)"), dismissButton: .cancel())
 })
 */
