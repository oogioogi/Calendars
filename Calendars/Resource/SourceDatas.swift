//
//  SourceDatas.swift
//  Calendars
//
//  Created by 이용석 on 2021/09/12.
//

import Foundation

final class SourceDatas: ObservableObject {
    
    @Published var daySourceDatas: [DaySourceData] = load("JsonData.json")
    
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



