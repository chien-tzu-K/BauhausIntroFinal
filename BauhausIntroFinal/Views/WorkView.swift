//
//  WorkView.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/16.
//

import SwiftUI

struct WorkView: View {

    let master: Master
    @Environment(\.dismiss) var dismiss

    var body: some View {
        ZStack {
            Color.color4.ignoresSafeArea()
            ScrollView {

                HStack(alignment: .top) {
                    Button {
                        dismiss()
                    } label: {
                        Image(systemName: "arrow.up.backward")
                            .font(.system(size: 40))
                            .padding(.vertical, 12)
                           
                    }.buttonStyle(PressedButtonStyle2())

                    Text(
                        """
                        Selected
                        Works
                        """
                    )
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .font(.system(.title, weight: .bold))
                    .padding(.horizontal, 12)
                }.padding(.top, 20)

                ForEach(master.works) { work in

                    Image(work.image)
                        .resizable()
                        .scaledToFit()
                        .clipShape(RoundedRectangle(cornerRadius: 12))

                    Text(work.name)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .font(.system(.title, weight: .bold))
                        .padding(.horizontal, 12)

                    Text(work.introduction)
                        .font(.system(size: 16))
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(.horizontal, 12)
                        .padding(.bottom, 12)

                }

            }
            .padding(.horizontal, 24)

        }
        .navigationBarBackButtonHidden(true)
    }
}

#Preview {
    WorkView(master: masters[1])

}
