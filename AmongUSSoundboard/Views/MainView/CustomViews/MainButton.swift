//
//  MainButton.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct MainButton: View {
    
    var buttonText:String
    var action: () -> ()
    var backgroundColor:Color
    
    var body: some View {
        
        Button(action: action, label: {
            Text(buttonText)
                .bold()
                .font(.title)
                .padding()
                .frame(width: ScreenSize.width * 0.9, height: 100, alignment: .center)
        })
        .padding(20)
        .makeCustomRoundedButton(backgroundColor: backgroundColor)
    }
}

struct MainButton_Previews: PreviewProvider {
    static var previews: some View {
        MainButton(buttonText: "Test", action: {}, backgroundColor: AmongColors.red)
    }
}
