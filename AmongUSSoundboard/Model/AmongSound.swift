//
//  AmongSound.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import Foundation

struct AmongSound:Identifiable{
    var id = UUID()
    var name:String
    var imgName:String
    var soundURL:URL
}
