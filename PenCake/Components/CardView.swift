//
//  CardView.swift
//  PenCake
//
//  Created by chaekie on 2023/03/18.
//

import SwiftUI

struct CardView: View {
    let diary: Diary
    var body: some View {
        HStack {
            Text(diary.title)
                .font(.system(size: 18, weight: .light, design: .serif))
           Spacer()
            Text(diary.date)
                .font(.system(size: 14, weight: .light, design: .serif))
                .foregroundColor(Color.gray)
        }
        .padding([.vertical], 20)
        
    }
}

struct CardView_Previews: PreviewProvider {
    static var diary = Diary.sampleDiary[2]
    static var previews: some View {
        CardView(diary: diary)
    }
}
