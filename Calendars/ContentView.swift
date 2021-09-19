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
            NavigationView{
                CalendarView(items: sourceDatas.daySourceDatas)
                    .navigationBarTitle("Calendar", displayMode: .inline)
                    .navigationBarItems(trailing: trailingItem)
            }
        }
    }
    var trailingItem: some View {
        HStack{
            NavigationLink(
                destination: ListCellView(items: sourceDatas.daySourceDatas)) {
                Image(systemName: "square.and.pencil")
            }
            //...
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(SourceDatas())
            .environmentObject(OverTimeInfo())
    }
}
