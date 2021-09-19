//
//  DaySourceData.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import Foundation

struct DaySourceData: Codable {
    var id: Int
    var dayText: Int
    var overTime: Int
}

class OverTimeInfo: ObservableObject {
    @Published var overTime:Int = 0
}
