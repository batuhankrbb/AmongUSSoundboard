//
//  ContentView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 5.12.2020.
//

import SwiftUI

struct MainView: View {
    
    @State var showSoundboard = false
    
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
                        
                    Button(action: {
                        showSoundboard = true
                    }, label: {
                        Text("PLAY SOUNDBOARD")
                            .bold()
                            .font(.title)
                            .padding()
                            .frame(width: ScreenSize.width * 0.9, height: 100, alignment: .center)
                    })
                    .padding(20)
                    .buttonStyle(CustomRoundedButtonStyle(backgroundColor: Color.red))
                    
                    
                    Spacer()
                    
                    HelpButtonsStack()
                        .padding()
                    
                    Spacer()
                }
            }.accentColor(.white)
        }.modifier(CustomNavigationViewStyle())
        .accentColor(.white)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
