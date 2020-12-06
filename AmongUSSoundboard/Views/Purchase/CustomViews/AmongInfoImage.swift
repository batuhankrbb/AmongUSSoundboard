//
//  AmongInfoImage.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct AmongInfoImage: View {
    var body: some View {
        VStack{
            Image("among")
                .resizable()
                .frame(width: ScreenSize.width * 0.5, height: ScreenSize.width * 0.5, alignment: .center)
                .aspectRatio(contentMode: .fit)
            Text("Unlimited Access").font(.largeTitle)
            Text("Get access to all our features").font(.title)
        }
        
    }
}

struct AmongInfoImage_Previews: PreviewProvider {
    static var previews: some View {
        AmongInfoImage()
    }
}
