//
//  PurchaseView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct PurchaseView: View {
    
    

    @State var showPurchase = false
    
    @State var isRestored = false
    

    
    var body: some View {
        VStack{
            PurchaseTextTop()
           
            AmongInfoImage()
            
            Spacer()
            
            PurchaseButton(action: {
                self.showPurchase.toggle()
            }, buttonText: "Get The Premium With No Ads", backgroundColor: AmongColors.green)
            .padding()
            
            PurchaseButton(action: {
                InAppManager.shared.restorePurchasesV5()
                isRestored.toggle()
            }, buttonText: "Restore Purchase", backgroundColor: AmongColors.blue)
            
            Spacer()
            Spacer()
            HStack{
                Spacer()
                BannerVC(bannerID: AdsIds.removeAdsBannerID).frame(width: 320, height: 50, alignment: .center)
                Spacer()
            }
        }
        .alert(isPresented: $isRestored, content: {
            Alert(title: Text("Purchase Restored Succesfully"))
        })
    }
}

struct PurchaseView_Previews: PreviewProvider {
    static var previews: some View {
        PurchaseView()
    }
}


