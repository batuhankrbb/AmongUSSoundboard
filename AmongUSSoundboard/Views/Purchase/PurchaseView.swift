//
//  PurchaseView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct PurchaseView: View {
    
    @State var isRestored = false

   
    
    var body: some View {
        VStack{
            PurchaseTextTop()
           
            AmongInfoImage()
            
            Spacer()

            PurchaseButton(action: {
                if let myProduct = IAPManager.shared.myProduct{
                    if PurchaseControlService.shared.isPurchased == false{
                        IAPManager.shared.purchaseV5(product: myProduct)
                    }
                }
                }, buttonText: PurchaseControlService.shared.isPurchased ? "YOU ARE PREMIUM!" : "Get The Premium Version", backgroundColor: AmongColors.green)
                .padding()
            
            
            PurchaseButton(action: {
                IAPManager.shared.restorePurchasesV5()
                isRestored.toggle()
            }, buttonText: "Restore Purchase", backgroundColor: AmongColors.blue)
            
            Spacer()
            Spacer()
            HStack{
                Spacer()
                if PurchaseControlService.shared.isPurchased == false{
                    BannerVC(bannerID: AdsIds.removeAdsBannerID).frame(width: 320, height: 50, alignment: .center)
                }
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




