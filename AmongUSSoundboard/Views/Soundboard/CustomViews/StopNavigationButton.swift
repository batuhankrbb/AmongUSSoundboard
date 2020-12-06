//
//  StopNavigationButton.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct StopNavigationButton: View {
    
    var action: () -> ()
    
    var body: some View {
        Button(action: action, label: {
            Image(systemName: "stop.fill").font(.system(size: 30))
        }).foregroundColor(.white)
    }
}

struct StopNavigationButton_Previews: PreviewProvider {
    static var previews: some View {
        StopNavigationButton(action: {})
    }
}
