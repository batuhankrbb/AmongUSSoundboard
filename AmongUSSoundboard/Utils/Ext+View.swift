//
//  Ext+View.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI
import UIKit

extension View {
    func makeCustomRoundedButton(backgroundColor:Color) -> some View {
        self.buttonStyle(CustomRoundedButtonStyle(backgroundColor: backgroundColor))
    }
    
    func makeCustomNavigationStyle() -> some View{
        self.modifier(CustomNavigationViewStyle())
    }
    
    func soundButtonTextModify() -> some View{
        self.modifier(SoundButtonTextModifier())
    }
    
    func soundButtonModify() -> some View{
        self.modifier(SoundButtonModifier())
    }
    
    func shareApp() {
            guard let url = URL(string: "https://apps.apple.com/us/app/soundboard-for-among-us/id1543599221") else { return }
            let data = ["Hey! I recommend this app because it contains all sounds of Among Us! Take a look at \(url)"]
            let av = UIActivityViewController(activityItems: data, applicationActivities: nil)
        
        
        if let popoverController = av.popoverPresentationController{
            popoverController.sourceRect = CGRect(x: ScreenSize.width / 2, y: ScreenSize.height / 2, width: 0, height: 0)
            popoverController.sourceView = UIView()
            popoverController.permittedArrowDirections = UIPopoverArrowDirection(rawValue: 0)
        }
        
            UIApplication.shared.windows.first?.rootViewController?.present(av, animated: true, completion: nil)
    }
}
