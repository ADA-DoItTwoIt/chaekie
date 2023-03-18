//
//  Theme.swift
//  PenCake
//
//  Created by chaekie on 2023/03/18.
//
import SwiftUI

extension Color {
    init(hex: UInt, alpha: Double = 1) {
        self.init(
            .sRGB,
            red: Double((hex >> 16) & 0xff) / 255,
            green: Double((hex >> 08) & 0xff) / 255,
            blue: Double((hex >> 00) & 0xff) / 255,
            opacity: alpha
        )
    }
}

enum Theme {
    static var black = Color(hex: 0x101010)
    static var white = Color(hex: 0xffffff)
    static var lightgray1 = Color(hex: 0xc0c2ce)
    static var lightgray2 = Color(hex: 0xc0c2ce)
    static var lightgray3 = Color(hex: 0xc0c2ce)
    static var mint = Color(hex: 0x97ebdb)
//    static var tpwhite = Color(hex: 0xffffff, alpha: 0.2)
}
