//
//  HistoryView.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/13.
//
import SwiftUI

struct HistoryView: View {

    @State private var selectedEvent: HistoryEvent? = historyEvents.first

    var body: some View {

        ZStack {
            Color.color3.ignoresSafeArea()

                //文字內容
                ScrollView {
                    if let event = selectedEvent {

                        VStack {

                            Text(event.location)
                                .font(.largeTitle)
                                .fontWeight(.bold)

                            Image(event.image)
                                .resizable()
                                .frame(height: 300)
                                .scaledToFill()

                            Text(event.introduction)
                                .foregroundStyle(.black)
                                .padding(.top, 12)
                                .font(.system(size: 16))

                        }.padding(.horizontal, 24)
                            .padding(.bottom,44)

                    }
                }
             
                

            
        }
        
        //時間線
        //safeAreaInset 是指固定在上方的
        .safeAreaInset(edge: .top){
            
            ZStack {
                Capsule()
                    .frame(height: 2)
                    .offset(y: -18)
                    .padding(.horizontal, 60)
                
                HStack {
                    ForEach(historyEvents) { event in
                        Button {
                            selectedEvent = event
                            
                        } label: {
                            VStack(spacing: 10) {
                                Circle()
                                    .frame(width: 28)
                                    .foregroundStyle(
                                        selectedEvent?.id == event.id
                                        ? .color2 : .black
                                    )
                                Text(String(event.year))
                                    .font(.system(size: 24))
                                    .fontWeight(.bold)
                                
                            }.frame(maxWidth: .infinity)
                            
                        }.buttonStyle(PressedButtonStyle())
                        
                    }
                    
                }
            }
            .padding(.top, 26)
            .padding(.bottom,20)
            .padding(.horizontal)
            .background(
                LinearGradient(
                        colors: [
                            Color.color3.opacity(1),
                            Color.color3.opacity(0.3),
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    )
            )
           
        }

    }

}

#Preview {
    HistoryView()
}
