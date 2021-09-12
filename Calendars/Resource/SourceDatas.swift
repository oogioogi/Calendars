//
//  SourceDatas.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import Foundation
enum Months {
    case Jan
    case Feb
    case Mar
    case Apr
    case May
    case Jun
    case Jul
    case Aug
    case Sep
    case Oct
    case Nov
    case Dec
    
    var id: Months { self }
    
    var shortName: String {
        return String("\(self)".prefix(3)).capitalized
    }
}

enum WorkType {
    case normalWork
    case overtimeWork
    case vacationYear
    case vacatioinMonth
    case nightday
    case holydayWork
    case vacationWork
}

func load<T: Decodable>(_ filename: String) -> T {
    
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    
    do {
        try data = Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }
    
    do {
        return try JSONDecoder().decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}

final class SourceDatas: ObservableObject {
    @Published var daySourceDatas: [DaySourceData] = load("JsonData.json")
    var datas: [(month: Months, days: [(day: Int, work: (type: WorkType, data: Double))])] =
        [
            (
                Months.Jan, //1
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Months.Feb, //2
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Months.Mar, //3
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Months.Apr, //4
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Months.May, //5
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Months.Jun, //6
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0))
                ]
                
            ),
            (
                Months.Jul, //7
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Months.Aug, //8
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Months.Sep, //9
                [
                    (1,(WorkType.normalWork, 9.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 9.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 9.0))
                ]
            ),
            (
                Months.Oct, //10
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Months.Nov, //11
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0))
                ]
            ),
            (
                Months.Dec, //12
                [
                    (1,(WorkType.normalWork, 10.0)), (2,(WorkType.normalWork, 10.0)), (3,(WorkType.normalWork, 8.0)),
                    (4,(WorkType.normalWork, 8.0)), (5,(WorkType.normalWork, 8.0)), (6,(WorkType.normalWork, 8.0)),
                    (7,(WorkType.normalWork, 8.0)), (8,(WorkType.normalWork, 8.0)), (9,(WorkType.normalWork, 8.0)),
                    (10,(WorkType.normalWork, 8.0)),
                    (11,(WorkType.normalWork, 8.0)), (12,(WorkType.normalWork, 8.0)), (13,(WorkType.normalWork, 8.0)),
                    (14,(WorkType.normalWork, 8.0)), (15,(WorkType.normalWork, 8.0)), (16,(WorkType.normalWork, 8.0)),
                    (17,(WorkType.normalWork, 8.0)), (18,(WorkType.normalWork, 8.0)), (19,(WorkType.normalWork, 8.0)),
                    (20,(WorkType.normalWork, 8.0)),
                    (21,(WorkType.normalWork, 8.0)), (22,(WorkType.normalWork, 8.0)), (23,(WorkType.normalWork, 8.0)),
                    (24,(WorkType.normalWork, 8.0)), (25,(WorkType.normalWork, 8.0)), (26,(WorkType.normalWork, 8.0)),
                    (27,(WorkType.normalWork, 8.0)), (28,(WorkType.normalWork, 8.0)), (29,(WorkType.normalWork, 8.0)),
                    (30,(WorkType.normalWork, 8.0)), (31,(WorkType.normalWork, 18.0))
                ]
            ),
        ]
}

