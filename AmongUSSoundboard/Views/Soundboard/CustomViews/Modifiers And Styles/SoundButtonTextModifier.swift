//
//  SoundButtonTextModifier.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct SoundButtonTextModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .padding(.horizontal,4)
            .padding(.vertical,1)
            .multilineTextAlignment(.center)
            .foregroundColor(.white).font(.largeTitle).minimumScaleFactor(0.05)
    }
}
