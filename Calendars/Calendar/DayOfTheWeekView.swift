//
//  DayOfTheWeekView.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/15.
//

import SwiftUI

struct DayOfTheWeekView: View {
    //@State private var isOnTap: Bool = false
    var dayOfWeek: String
    var textColor: Color {
        if dayOfWeek == "Sun" {
            return .pink
        }else if dayOfWeek == "Sat" {
            return .blue
        }
        return .black
    }
    var body: some View {
        GeometryReader { geometry in
            ZStack{
                Circle()
                    .foregroundColor(textColor)
                    .opacity(0.3)
                Text(dayOfWeek)
                    .font(.system(size: geometry.size.width / 2.5,
                                  weight: .bold,
                                  design: .rounded))
            }
        }
    }
}

struct DayOfTheWeekView_Previews: PreviewProvider {
    static var previews: some View {
        DayOfTheWeekView(dayOfWeek: "Sun")
    }
}
