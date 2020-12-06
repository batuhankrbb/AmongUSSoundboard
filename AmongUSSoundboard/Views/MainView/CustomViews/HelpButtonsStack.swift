//
//  HelpButtonsStack.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct HelpButtonsStack: View {
    var body: some View {
        
        HStack(alignment: .bottom,spacing: 20){
            Button(action: {}, label: {
                Image("shareIcon")
                    .resizable()
                    .padding()
            })
            .frame(width: 90, height: 90, alignment: .center)
            .makeCustomRoundedButton(backgroundColor: AmongColors.blue)
            
            Button(action: {}, label: {
                Image(systemName: "star.fill")
                    .font(.system(size: 80))
                    .padding()
            })
            .makeCustomRoundedButton(backgroundColor: AmongColors.green)
            
            
            Button(action: {}, label: {
                Image("removeAdIcon")
                    .resizable()
                    .padding()
            })
            .frame(width: 90, height: 90, alignment: .center)
            .makeCustomRoundedButton(backgroundColor: AmongColors.purple)
        }
        
    }
}

struct HelpButtonsStack_Previews: PreviewProvider {
    static var previews: some View {
        HelpButtonsStack()
    }
}
