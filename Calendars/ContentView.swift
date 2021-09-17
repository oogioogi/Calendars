//
//  ContentView.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var sourceDatas: SourceDatas

    var body: some View {
        VStack {
            Text(/*@START_MENU_TOKEN@*/"Placeholder"/*@END_MENU_TOKEN@*/)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            CalendarRow(items: sourceDatas.daySourceDatas)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SourceDatas())
    }
}
