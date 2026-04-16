//
//  TabButton.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/18.
//

import SwiftUI


struct TabButton : View {
    
    @Binding var selectedTab : Int
    let index : Int
    let icon : String
    let text : String
    let highlightIcon : String
    let highlightTextColor : Color
    
    var isHighlighted : Bool { selectedTab == index }
    
    var body: some View {
        Button {
            selectedTab = index

        } label: {
            VStack{
                Image(isHighlighted ? highlightIcon : icon)
                    .padding(.bottom,2)
                Text(text)
                    .foregroundStyle(isHighlighted ? highlightTextColor :.white)
            }
        }
    }
}


