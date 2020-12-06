//
//  InAppStoreModel.swift
//  NumaraSorgulama
//
//  Created by Sercan KAYA on 6.12.2020.
//

import Foundation
import StoreKit
struct SellProduct : Hashable {
    let id : String
    let title : String
    let description : String
    var isLocked : Bool
    var price : String?
    let locale : Locale
    let imageName : String
    lazy var formatter : NumberFormatter = {
        let nf = NumberFormatter()
        nf.numberStyle = .currency
        nf.locale = locale
        return nf
    }()
    init(product : SKProduct, isLocked : Bool = true ) {
        self.id  = product.productIdentifier
        self.title = product.localizedTitle
        self.description = product.localizedDescription
        self.isLocked = isLocked
        self.locale = product.priceLocale
        self.imageName = product.productIdentifier
        if isLocked {
            self.price = formatter.string(from: product.price)
        }
    }
    
}
