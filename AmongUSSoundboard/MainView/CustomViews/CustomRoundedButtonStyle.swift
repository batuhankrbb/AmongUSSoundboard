//
//  CustomRoundedButtonStyle.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import Foundation
import SwiftUI

struct CustomRoundedButtonStyle:ButtonStyle{
    
    var backgroundColor:Color
    
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .foregroundColor(.black)
            .lineLimit(1)
            .minimumScaleFactor(0.4)
            .background(RoundedRectangle(cornerRadius: 8)
                            .fill(backgroundColor)
            )
            .overlay(
                RoundedRectangle(cornerRadius: 8)
                    .stroke(Color.black,lineWidth: 4)
            )
            .minimumScaleFactor(0.3)
            .shadow(radius: 6)
    }
}
