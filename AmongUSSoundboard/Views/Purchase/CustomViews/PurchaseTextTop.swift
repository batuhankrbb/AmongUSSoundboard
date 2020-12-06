//
//  PurchaseTextTop.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct PurchaseTextTop: View {
    var body: some View {
        ZStack{
            AmongColors.purple.frame( height: 130,alignment: .center)
                .edgesIgnoringSafeArea(.top)
            Text("Soundboard for Among Us Without Ads!")
                .bold()
                .font(.system(size: 60))
                .modifier(PurchaseTextModifier())
        }
    }
}

struct PurchaseTextTop_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseTextTop()
    }
}
