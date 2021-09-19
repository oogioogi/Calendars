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
                
                VStack(alignment: .leading) {
                    Text("Over Time: \(overTime)")
                        .padding(.bottom, 5)
                    Text("Holy Day Work : 1")
                }
                .padding([.top, .leading], 20)
                .colorInvert()
            }

        }
    }
}

struct DetailCellView_Previews: PreviewProvider {
    static var previews: some View {
        DetailCellView(overTime: 98)
    }
}
