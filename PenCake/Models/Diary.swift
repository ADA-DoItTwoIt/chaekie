//
//  Diary.swift
//  PenCake
//
//  Created by chaekie on 2023/03/18.
//

import Foundation

struct Diary: Identifiable {
    let id: String
    let title: String
    let date: String
}

extension Diary {
    static let sampleDiary: [Diary] =
    [
        Diary(id: "c1", title: "글 1", date: "03.17"),
        Diary(id: "c2", title: "글 2", date: "03.17"),
        Diary(id: "c3", title: "글 3", date: "03.17"),
        Diary(id: "c4", title: "-", date: "03.17")
    ]
}

