//
//  ContentView.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/13.
//

import SwiftUI

struct ContentView: View {

    @State private var selectedTab = 0

    var body: some View {
        NavigationStack{
            Group{
                
                switch selectedTab {
                case 0:
                    HistoryView()
                case 1:
                    MastersView()
                default:
                    PrincipleView()
                }}
            .safeAreaInset(edge:.bottom){
                ZStack{
                    Color.black.ignoresSafeArea()
                    HStack{
                        Spacer()
                        
                        TabButton(selectedTab:$selectedTab, index: 0, icon:"IconH", text: "History", highlightIcon: "IconH2", highlightTextColor: .color2)
                        Spacer()
                        TabButton(selectedTab:$selectedTab, index: 1, icon:"IconM", text: "Masters", highlightIcon: "IconM2", highlightTextColor: .color4)
                        Spacer()
                        TabButton(selectedTab:$selectedTab, index: 2, icon:"IconP", text: "Principles", highlightIcon: "IconP2", highlightTextColor: .color1)
                        Spacer()
                        
                    }
                    
                    .padding(.top, 16)
                    
                }
                .frame(height: 66, alignment: .bottom)
                .frame(maxWidth: .infinity)
            }
        }
    }
}

#Preview {
    ContentView()
}

