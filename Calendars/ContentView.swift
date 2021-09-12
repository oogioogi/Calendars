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
