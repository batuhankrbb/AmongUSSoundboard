//
//  SoundService.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 6.12.2020.
//

import Foundation
import AVFoundation

class SoundService{
    private init() {}
    
    private var player = AVAudioPlayer()
    
    static var shared = SoundService()
    
    func playSound(sound:URL){
        do{
            player = try AVAudioPlayer(contentsOf: sound)
            player.play()
        }catch{
            print("DEBUG - Error in Sound Service -1")
        }
    }
    
    func stopSound(){
        player.stop()
    }
}
