//
//  MyButtonStyle.swift
//  Untitle Book
//
//  Created by 孜 on 2026/3/14.
//

import SwiftUI

struct PressedButtonStyle: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(
                configuration.isPressed ? .color2 : .black
            )
            .scaleEffect(
                configuration.isPressed ? 0.95 : 1
            )
    }

}

struct PressedButtonStyle2: ButtonStyle {

    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundStyle(
                configuration.isPressed ? .color1 : .black
            )
            .scaleEffect(
                configuration.isPressed ? 0.95 : 1
            )
    }

}

