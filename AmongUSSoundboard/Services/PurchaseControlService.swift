//
//  PurchaseControlService.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import Foundation


class PurchaseControlService{
    private init(){}
    
    private let userDefaults = UserDefaults.standard
    let shared = PurchaseControlService()
    
    var isPurchased:Bool{
        return userDefaults.bool(forKey: "isPurchased")
    }
    
    func purchaseCompleted(){
        userDefaults.set(true, forKey: "isPurchased")
    }
    
    func purchaseCancelled(){
        userDefaults.set(false, forKey: "isPurchased")
    }
}
