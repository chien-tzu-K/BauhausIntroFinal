//
//  MastersView.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/16.
//
import SwiftUI

import SwiftUI

struct MastersView: View {

    
    
    var body: some View {
       
            
            ZStack {
                Color.color3.ignoresSafeArea()
                ScrollView {
                    Text("Masters")
                        .font(.system(size: 48))
                        .fontWeight(.heavy)
                        .padding(.top, 28)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    LazyVGrid(columns: [GridItem(.flexible())], spacing: 12) {
                        
                        ForEach(masters) { master in
                            
                            NavigationLink{
                                WorkView(master: master)
                            } label:{
                                VStack(alignment:.center, spacing: 0) {
                                    Image(master.avatar)
                                        .resizable()
                                        .scaledToFill()
                                        
                                        .frame(maxWidth: .infinity)
                                        .frame(height: 180)
                                        .clipped()
                                    
                                    Text(master.name)
                                        .foregroundColor(.black)
                                        .font(.system(size: 20, weight: .semibold))
                                        
                                        .frame(maxWidth: .infinity)
                                        .padding(.horizontal, 10)
                                        .padding(.vertical, 8)
                                        .frame(height: 60)
                                        .padding(.horizontal)
                                }
                                .background(.color4)
                                .clipShape(RoundedRectangle(cornerRadius: 12))
                                .frame(height: 260)
                            }
                            
                        }
                    }
                    
                    .frame(maxWidth: .infinity)
                    .padding(.bottom,44)
                }
                .padding(.horizontal, 24)
            }
        
    }
}

#Preview {
    MastersView()
}

