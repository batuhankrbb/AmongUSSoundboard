//
//  CustomNavigationBarItem.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct CustomNavigationBarItem: View {
    
     var content:AnyView
    var action: () -> ()
    
    var body: some View {
        Button(action: action, label: {
            content.foregroundColor(.white).imageScale(.large)
        })
    }
}

struct CustomNavigationBarItem_Previews: PreviewProvider {
    static var previews: some View {
        CustomNavigationBarItem(content: AnyView(Image(systemName: "stop.fill")), action: {})
    }
}
