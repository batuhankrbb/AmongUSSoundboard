//
//  AdsIDs.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import Foundation

enum AdsIds{
    static var mainBannerID:String{
        if PurchaseControlService.shared.isPurchased == true{
            return ""
        }else{
            return "ca-app-pub-3108242646730560/3602888843"
        }
    }
    static var playSoundboardClickInterstetialID:String{
        if PurchaseControlService.shared.isPurchased == true{
            return ""
        }else{
            return "ca-app-pub-3108242646730560/6646681127"
        }
    }
    static var removeAdsBannerID:String{
        if PurchaseControlService.shared.isPurchased == true{
            return ""
        }else{
            return "ca-app-pub-3108242646730560/5782329625"
        }
    }
    static var soundClickInterstetialID:String{
        if PurchaseControlService.shared.isPurchased == true{
            return ""
        }else{
            return "ca-app-pub-3108242646730560/7350562162"
        }
    }
    static var stopClickedID:String{
        if PurchaseControlService.shared.isPurchased == true{
            return ""
        }else{
            return "ca-app-pub-3108242646730560/3323703156"
        }
    }
}
