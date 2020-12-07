//
//  InterstitialAD.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI
import GoogleMobileAds
import UIKit
    
final class Interstitial:NSObject, GADInterstitialDelegate{
    
    var interstitialID:String
    var interstitial:GADInterstitial
    
    init(interstitialID:String) {
        self.interstitialID = interstitialID
        interstitial = GADInterstitial(adUnitID: interstitialID)
        super.init()
        LoadInterstitial()
    }
    
    func LoadInterstitial(){
        let req = GADRequest()
        self.interstitial.load(req)
        self.interstitial.delegate = self
    }
    
    func showAd(){
        if self.interstitial.isReady{
           let root = UIApplication.shared.windows.first?.rootViewController
           self.interstitial.present(fromRootViewController: root!)
        }
       else{
           print("Not Ready")
       }
    }
    
    func interstitialDidDismissScreen(_ ad: GADInterstitial) {
        self.interstitial = GADInterstitial(adUnitID: interstitialID)
        LoadInterstitial()
    }
}


