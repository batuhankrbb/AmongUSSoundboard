//
//  PurchaseButton.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct PurchaseButton: View {
    
    var action: () -> ()
    var buttonText:String
    var backgroundColor:Color
    
    var body: some View {
        Button(action: action, label: {
            Text(buttonText)
                .frame(width: ScreenSize.width * 0.7, height: 70, alignment: .center)
        })
        .padding(.horizontal)
        .makeCustomRoundedButton(backgroundColor: backgroundColor)
    }
}

struct PurchaseButton_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseButton(action: {}, buttonText: "Test", backgroundColor: Color.red)
    }
}
