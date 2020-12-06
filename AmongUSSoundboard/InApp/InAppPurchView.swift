//
//  InAppPurchView.swift
//  NumaraSorgulama
//
//  Created by Sercan KAYA on 6.12.2020.
//

import SwiftUI

struct InAppPurchView: View {
    @EnvironmentObject var sell : StoreApp
    var body: some View {
        ZStack{
            Color.blue.edgesIgnoringSafeArea(.all)
            VStack{
                
          
                ForEach(self.sell.allProduct, id:\.self){product in
                    ProductRow(receipe: product)
                    
                }
                
            }.padding(.top, 50)
        }
    }
}

struct InAppPurchView_Previews: PreviewProvider {
    static var previews: some View {
        InAppPurchView()
    }
}

struct ProductRow : View {
    let receipe : SellProduct
    @EnvironmentObject var sell : StoreApp

    var body: some View {
        VStack{
        
            Button(action: {
                if let prudct  = sell.product(for: receipe.id) {
                    sell.purchaseProduct(prudct)
                }
            }, label: {
                Text("INAPP_BUTTON_TEXT")
                    .foregroundColor(.white)
                 
            })
        }
    }
}
