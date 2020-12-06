//
//  PurchaseView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct PurchaseView: View {
    
    
    @EnvironmentObject var session : StoreApp

    @State var showPurchase = false
    
    @State var isRestored = false
    
    //
    let receipe : SellProduct
    @EnvironmentObject var sell : StoreApp
    
    var body: some View {
        VStack{
            PurchaseTextTop()
           
            AmongInfoImage()
            
            Spacer()
            
            PurchaseButton(action: {
                self.showPurchase.toggle()
            }, buttonText: "Get The Premium With No Ads", backgroundColor: AmongColors.green)
            .padding()
            .sheet(isPresented: $showPurchase, content: {
                if let product = sell.allProduct.first{
                    if let prudct  = sell.product(for: receipe.id) {
                        sell.purchaseProduct(prudct)
                    }
                }
               
            })
            PurchaseButton(action: {
                self.session.restorePurchase()
                isRestored.toggle()
            }, buttonText: "Restore Purchase", backgroundColor: AmongColors.blue)
            
            Spacer()
            Spacer()
          
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


