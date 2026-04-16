//
//  PerPrinciple.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/16.
//
import SwiftUI

struct PerPrinciple: View {
    
    let principle : Principle
    @State private var inPrinciples = false
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack {
            Color.color3.ignoresSafeArea()
            ScrollView{
                HStack(alignment: .top){
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.up.backward")
                            .font(.system(size: 40))
                            .padding(.vertical,12)
                            
                    }.buttonStyle(PressedButtonStyle2())

                    Text(principle.name)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(.title, weight: .bold))
                        .padding(.horizontal, 12)
                }  .padding(.top, 20)
                
                
                Image(inPrinciples ? principle.imageOn : principle.imageOff)
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth:.infinity)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                
                Button {
                    inPrinciples.toggle()
                } label: {
                    Text(inPrinciples ? "Before Principle" : "After Principle")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(inPrinciples ? .color1 : .color4)
                        .fontWeight(.semibold)
                        .foregroundStyle((inPrinciples ? .color3 : .black))
                        .clipShape(Capsule())
                }.buttonStyle(PressedButtonStyle())
                    .padding(.top, 12)
                
                Text(principle.introduction)
                    .padding(.top, 12)
                    .font(.system(size: 16))
                    .padding(.bottom, 24)
                
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal, 12)
                
            }.padding(.horizontal, 24)
             
        }
        .navigationBarBackButtonHidden(true)
    }
}


#Preview {
    PerPrinciple(principle : principles[0])
}
