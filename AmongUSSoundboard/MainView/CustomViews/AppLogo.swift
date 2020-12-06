//
//  AppLogo.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct AppLogo: View {
    var body: some View {
        
       
            ZStack{
               
                Circle()
                    .fill(AmongColors.red)
                    
                    .background(Circle().stroke(Color.black,lineWidth: 12))
            
                    Image("soundIcon")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: ScreenSize.width * 0.3, height: ScreenSize.width * 0.3, alignment: .center)
            
            }.frame(width: ScreenSize.width * 0.4, height: ScreenSize.width * 0.4, alignment: .center)
            .shadow(radius: 4)
        
        
    }
}

struct AppLogo_Previews: PreviewProvider {
    static var previews: some View {
        AppLogo()
    }
}
