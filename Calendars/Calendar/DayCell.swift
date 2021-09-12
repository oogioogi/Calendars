//
//  DayCell.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

struct DayCell: View {
    //var id = UUID()
    var daySourceData: DaySourceData
    @Binding var isOnTap: Bool
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Circle()
                    .foregroundColor(.gray)
                Text("\(daySourceData.dayText)")
                    .font(.system(size: geometry.size.width / 2 ))
            }
            .onTapGesture {
                isOnTap.toggle()
                }
            .alert(isPresented: $isOnTap) {
                
                Alert(title: Text("content"), message: Text("\(daySourceData.dayText)"), dismissButton: .cancel())
            }
        }
    }
}

struct DayCell_Previews: PreviewProvider {
    @State static var isOnTap: Bool = false
    static var previews: some View {
        DayCell(daySourceData: SourceDatas().daySourceDatas[0], isOnTap: $isOnTap)
    }
}

