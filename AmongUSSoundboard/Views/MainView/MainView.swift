//
//  ContentView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 5.12.2020.
//

import SwiftUI

struct MainView: View {
    
    @State var showSoundboard = false
    @State var showPurcase = false
    var body: some View {
        NavigationView{
            ZStack{
                AmongColors.orange.edgesIgnoringSafeArea(.all)
                
                VStack {
                        HStack{
                            Spacer()
                            AppLogo()
                            Spacer()
                        }.padding()
                    
                    Spacer()
                        
                    NavigationLink("", destination: SoundboardView(), isActive: $showSoundboard)
                        
                    MainButton(buttonText: "PLAY SOUNDBOARD", action: {
                        showSoundboard = true
                    }, backgroundColor: AmongColors.red)
                    
                    Spacer()
                    
                    HelpButtonsStack(purchaseClicked: $showPurcase)
                        .padding()
                    
                    Spacer()
                    
                    
                    
                }
            }
        }
        .sheet(isPresented: $showPurcase, content: {
            PurchaseView()
        })
        .accentColor(.white)
        .makeCustomNavigationStyle()
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
