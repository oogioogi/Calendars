//
//  DetailCellView.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/17.
//

import SwiftUI

struct DetailCellView: View {
    var overTime: Int
    var body: some View {
        VStack {
            GeometryReader { geometry in
                Spacer()
                let rectangle = Rectangle()
                rectangle.frame(width: geometry.size.width, height: geometry.size.width / 2)
                    .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    .opacity(0.8)
                    .cornerRadius(20)
                
                VStack {
                    Text("Over Time: \(overTime)")
                    Text("22222")
                }
                .padding([.top, .leading], 20)
            }

        }
    }
}

struct DetailCellView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCellView(overTime: 98)
    }
}
