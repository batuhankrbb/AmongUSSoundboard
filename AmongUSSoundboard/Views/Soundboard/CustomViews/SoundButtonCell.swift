//
//  SoundButtonCell.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct SoundButtonCell: View {
    
    var amongSound:AmongSound
    
    var interstitialSound:Interstitial
    
    init(amongSound:AmongSound) {
        self.amongSound = amongSound
        interstitialSound = Interstitial(interstitialID: AdsIds.soundClickInterstetialID)
    }
    
    var body: some View {
        ZStack{
            AmongColors.orange
            
            VStack{
                Image(amongSound.imgName)
                    .resizable()
                    .padding(.horizontal,3)
                    .padding(.vertical,8)
                    .aspectRatio(contentMode: .fit)
                    
                AmongColors.black.frame(height: 50)
                    
                .overlay(
                    Text(amongSound.name)
                        .bold()
                        .soundButtonTextModify()
                )
            }
            
        }
        .soundButtonModify()
        .onTapGesture {
            SoundService.shared.playSound(sound: amongSound.soundURL)
            interstitialSound.showAd()
        }        
    }
}

struct SoundButtonCell_Previews: PreviewProvider {
    static var previews: some View {
        let amongSound = AmongSound(name: "Vent On", imgName: "among", soundURL: AmongSounds.astroidHit.soundURL)
        SoundButtonCell(amongSound: amongSound)
    }
}





