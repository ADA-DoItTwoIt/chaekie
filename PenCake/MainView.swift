//
//  ContentView.swift
//  PenCake
//
//  Created by chaekie on 2023/03/18.
//

import SwiftUI


struct MainView: View {
    let diarys: [Diary] = Diary.sampleDiary
    @State private var isOpen = false
    @State private var isRotating = 0.0
    
    var body: some View {
        VStack {
            VStack {
                Text("이야기 1")
                    .font(.title)
                    .fontWeight(.bold)
                    .fontDesign(.serif)
                    .padding(.bottom, 25)
                Text("여기를 눌러서 제목을 변경하세요")
                    .fontDesign(.serif)
            }
            .padding(.bottom, 22)
            
            Divider()
                .padding(.bottom, 10)
            ScrollView {
                ForEach(diarys.reversed(), id: \.id) { diary in
                    CardView(diary: diary)
                }
            }
        }
        .padding()
        
        .overlay() {
            if isOpen {
                VStack {
                    Text("앱 설정")
                    Text("이 이야기")
                    Text("모든 이야기")
                    Text("검색")
                    Text("글추가")
                }
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(Theme.white)
            }
        }
        
        .overlay(alignment:.bottomTrailing){
            Button {
                withAnimation(.easeInOut(duration: 0.5)) {
                    self.isOpen.toggle()
                }
            } label: {
                ZStack {
                    if isOpen {
                        Circle()
                           .strokeBorder(lineWidth: 0.8)
                           .foregroundColor(Theme.white)
                           .frame(width: 70, height: 70)
                           .background(Circle().foregroundColor(Theme.white))
                       Image(systemName: "xmark")
                           .foregroundColor(Theme.lightgray1)
                           .font(.system(size: 20))
                           .rotationEffect(.degrees(isOpen ? 90 : 0))
                           .animation(.easeInOut, value: isOpen)
                    } else {
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
            .padding()
        }
        
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
