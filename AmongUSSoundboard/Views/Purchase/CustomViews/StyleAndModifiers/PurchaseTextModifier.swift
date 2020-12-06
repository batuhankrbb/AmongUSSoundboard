//
//  PurchaseTextModifier.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct PurchaseTextModifier:ViewModifier{
    func body(content: Content) -> some View {
        content
            .foregroundColor(.white)
            .lineLimit(1)
            .minimumScaleFactor(0.2)
            .padding()
    }
}
