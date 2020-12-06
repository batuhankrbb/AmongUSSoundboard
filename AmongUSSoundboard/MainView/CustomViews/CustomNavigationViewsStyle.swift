//
//  CustomNavigationViewsStyle.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import SwiftUI

struct CustomNavigationViewStyle:ViewModifier{
    func body(content: Content) -> some View {
        content
            .navigationViewStyle(StackNavigationViewStyle())
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
            .navigationBarBackButtonHidden(true)
    }
}
