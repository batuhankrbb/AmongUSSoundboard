//
//  CustomRoundedButton.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct CustomRoundedButton: View {
    
    var action: () -> ()
    var backgroundColor:Color
    var content:AnyView
    
    var body: some View {
        Button(action: action, label: {
            Text("DENEME AMK").padding()
        })
        
        .buttonStyle(CustomRoundedButtonStyle(backgroundColor: backgroundColor))
    }
}

struct CustomRoundedButton_Previews: PreviewProvider {
    static var previews: some View {
        CustomRoundedButton(action: {}, backgroundColor: AmongColors.red,content: AnyView(Text("DENEME")))
    }
}

