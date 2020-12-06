//
//  ReviewService.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI
import StoreKit


class ReviewService{
    
    private init(){}
    
    static let shared = ReviewService()
    
    func getRating(){
        if #available( iOS 10.3,*){
            if let scene = UIApplication.shared.connectedScenes.first(where: { $0.activationState == .foregroundActive }) as? UIWindowScene {
                if #available(iOS 14.0, *) {
                    SKStoreReviewController.requestReview(in: scene)
                } else {
                    SKStoreReviewController.requestReview()
                }
            }
        }
    }
    
}
