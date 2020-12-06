//
//  SoundButtonModifier.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct SoundButtonModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .frame(width: ScreenSize.width * 0.28, height: ScreenSize.width * 0.28, alignment: .center)
            .padding(.horizontal,12)
            .cornerRadius(20)
            .contentShape(Rectangle())
    }
}
