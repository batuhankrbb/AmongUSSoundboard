//
//  ContentView.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 5.12.2020.
//

import SwiftUI

struct MainView: View {
    
    
    var body: some View {
        ZStack{
            AmongColors.orange.edgesIgnoringSafeArea(.all)
            
            
            
            VStack {
            
                    HStack{
                        Spacer()
                        AppLogo()
                        Spacer()
                    }.padding()
                
                Spacer()
                    
                Button(action: {}, label: {
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
            
            
           
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
