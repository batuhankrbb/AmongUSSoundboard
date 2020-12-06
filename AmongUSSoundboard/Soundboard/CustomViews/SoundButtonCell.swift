//
//  SoundButtonCell.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct SoundButtonCell: View {
    
    var amongSound:AmongSound
    
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
                        .padding(.horizontal,4)
                        .padding(.vertical,1)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white).font(.largeTitle).minimumScaleFactor(0.05)
                )
            }
            
        }.frame(width: ScreenSize.width * 0.28, height: ScreenSize.width * 0.28, alignment: .center)
        .padding(.horizontal,12)
        .cornerRadius(20)
        .contentShape(Rectangle())
        .onTapGesture {
            SoundService.shared.playSound(sound: amongSound.soundURL)
        }
        
    }
}

struct SoundButtonCell_Previews: PreviewProvider {
    static var previews: some View {
        let amongSound = AmongSound(name: "Vent On", imgName: "among", soundURL: AmongSounds.astroidHit.soundURL)
        SoundButtonCell(amongSound: amongSound)
    }
}
