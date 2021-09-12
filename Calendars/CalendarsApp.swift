//
//  CalendarsApp.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import SwiftUI

@main
struct CalendarsApp: App {
    @StateObject var sourceDatas = SourceDatas()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(sourceDatas)
        }
    }
}
