//
//  ContentView.swift
//  PenCake
//
//  Created by chaekie on 2023/03/18.
//
//단축키 생성 필요(한줄 지우기, 행이동)

import SwiftUI


struct MainView: View {
    let diarys: [Diary] = Diary.sampleDiary
    
    var body: some View {
        VStack {
            VStack {
                Text("이야기 1")
                    .font(.system(size: 24, weight: .bold, design: .serif))
                    .padding([.bottom], 25)
                Text("여기를 눌러서 제목을 변경하세요")
                    .font(.system(size: 18, design: .serif))
            }
            .padding(.bottom, 22)
            
            Divider()
                .padding(.bottom, 10)
            
            ZStack(alignment: .bottom) {
                ScrollView {
                    ForEach(diarys.reversed(), id: \.id) { diary in
                            CardView(diary: diary)
                        }
                }
                HStack {
                    Spacer()
                    Button(action: {}) {
                        ZStack{
                        Circle()
                            .strokeBorder(lineWidth: 0.8)
                            .foregroundColor(Theme.lightgray1)
                            .frame(width: 70, height: 70)
                            .background(Circle().foregroundColor(Theme.white))
                        Image(systemName: "ellipsis")
                            .foregroundColor(Theme.lightgray1)
                            .font(.system(size: 25))
                            }
                        }
                    }
                }
        }
        .padding()
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
