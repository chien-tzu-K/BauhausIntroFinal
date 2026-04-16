//
//  PrincipleView.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/16.
//
import SwiftUI

struct PrincipleView: View {

    let columns = [GridItem(.flexible()), GridItem(.flexible())]
    var body: some View {

        ZStack {
            Color.color3.ignoresSafeArea()
            ScrollView {
                //每張卡片
                Text("Principles")
                    .font(.system(size: 48))
                    .fontWeight(.heavy)
                    .padding(.top, 28)
                    .frame(maxWidth: .infinity, alignment: .leading)

                LazyVGrid(columns: columns) {
                    ForEach(principles) { principle in

                        NavigationLink {
                            PerPrinciple(principle: principle)
                        } label: {
                            ZStack {
                                LinearGradient(
                                    colors: [
                                        Color.black.opacity(1.0),
                                        Color.black.opacity(0.6),
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                Text(principle.name)
                                    //frame的alignment是裡面的文字靠右對齊
                                    .frame(
                                        maxWidth: .infinity,
                                        alignment: .leading
                                    )
                                    .multilineTextAlignment(.leading)
                                    .font(.system(size: 24))
                                    .fontWeight(.medium)
                                    .foregroundStyle(.white)

                                    .padding()

                            }.frame(height: 260)
                                .background(Image(principle.imageOn))
                                .clipShape(RoundedRectangle(cornerRadius: 12))

                        }
                    }
                }

                .padding(.top, 24)
            }
            
            
            .padding(.horizontal, 24)
            
            
            
        }

    }
}

#Preview {
    PrincipleView()
}
