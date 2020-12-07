//
//  TestView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 7.12.2020.
//

import SwiftUI

struct BuyView: View {
  @State var purchased = false
  @ObservedObject var products = productsDB.shared
  var body: some View {
  List {
    ForEach((0 ..< self.products.items.count), id: \.self) { column in
      Text(self.products.items[column].localizedDescription)
        .onTapGesture {
            InAppManager.shared.purchaseV5(product: self.products.items[column])
      }
    }
  }
 }
}

struct BuyView_Previewers: PreviewProvider {
    static var previews: some View {
        BuyView()
    }
}
