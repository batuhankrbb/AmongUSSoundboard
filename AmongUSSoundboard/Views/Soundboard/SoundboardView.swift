//
//  SoundboardView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct SoundboardView: View {
    
    var gridItems:[GridItem] = [GridItem(.flexible()),
                                GridItem(.flexible()),
                                GridItem(.flexible())]
    
    
    var interstitialStop:Interstitial
    
    init() {
        UITableView.appearance().backgroundColor = .clear
        self.interstitialStop = Interstitial(interstitialID: AdsIds.stopClickedID)
    }
    
    var body: some View {
        
        ZStack {
            AmongColors.blue.edgesIgnoringSafeArea(.all)
            List {
                    LazyVGrid(columns: gridItems, alignment: .center, spacing: 30, content: {
                        
                        ForEach(soundList){ sound in
                            SoundButtonCell(amongSound: sound)
                        }
                    }).listRowBackground(AmongColors.blue)
            }
        }
        .navigationBarItems(trailing: StopNavigationButton(action: { SoundService.shared.stopSound()
            interstitialStop.showAd()
        }))
        
    }
}

struct SoundboardView_Previews: PreviewProvider {
    static var previews: some View {
        SoundboardView()
    }
}
