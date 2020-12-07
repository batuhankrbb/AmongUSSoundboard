//
//  SoundsList.swift
//  AmongUSSoundboard
//
//  Created by Batuhan Karababa on 5.12.2020.
//

import Foundation

enum AmongSounds{
    static let allVoteTyping = AmongSound(name: "All Vote Typing", imgName: "voteImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "All-Vote-Typing", ofType: "mp3")!))
    
    static let astroidHit = AmongSound(name: "Astroid Hit", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Astroid-Hit", ofType: "m4a")!))
    
    static let astroidShoot = AmongSound(name: "Astroid Shoot", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Astroid-Shoot", ofType: "m4a")!))
    
    static let beverage = AmongSound(name: "Beverage", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Beverage", ofType: "m4a")!))
    
    static let bodyFound = AmongSound(name: "Body Found", imgName: "bodyFoundImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Body-Found", ofType: "mp3")!))
    
    static let buyingBeverage = AmongSound(name: "Buying Beverage", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Buying-Beverage", ofType: "mp3")!))
    
    static let commsRadio = AmongSound(name: "Comms Radio", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Comms-Radio", ofType: "m4a")!))
    
    static let doorCloseSabotage = AmongSound(name: "Door Close Sabotage", imgName: "SabotageImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Door-Close-Sabotage", ofType: "mp3")!))
    
    static let crewWin = AmongSound(name: "Crew Win", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Crew-Win", ofType: "mp3")!))
    
    static let crisis = AmongSound(name: "Crisis", imgName: "SabotageImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Crisis", ofType: "mp3")!))
    
    static let death1 = AmongSound(name: "Death -1", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Death-1", ofType: "mp3")!))
    
    static let death2 = AmongSound(name: "Death -2 Stabbing", imgName: "knifeKillImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Death-2-Stabbing", ofType: "mp3")!))
    
    static let death3 = AmongSound(name: "Death -3 Gun", imgName: "gunKillImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Death-3-Gun", ofType: "mp3")!))
    
    static let death4 = AmongSound(name: "Death -4 Neck", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Death-4-Neck", ofType: "mp3")!))
    
    static let decontaminationGas = AmongSound(name: "Decontamination Gas", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Decontamination-Gas", ofType: "m4a")!))
    
    static let doorOpenSabotage = AmongSound(name: "Door Open Sabotage", imgName: "SabotageImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Door-Open-Sabotage", ofType: "mp3")!))
    
    static let ejectLava = AmongSound(name: "Eject Lava", imgName: "voteImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Eject-Lava", ofType: "mp3")!))
    
    static let electricZappingSnow = AmongSound(name: "Electric Zapping Snow", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Electric-Zapping-Snow", ofType: "mp3")!))
    
    static let emergencyMeeting = AmongSound(name: "Emergency Meeting", imgName: "emergencyMeetingImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Emergency-Meeting", ofType: "mp3")!))
    
    static let engineZapping = AmongSound(name: "Engine Zapping", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Engine-Zapping", ofType: "mp3")!))
    
    static let fixingCommunication = AmongSound(name: "Fixing Communication", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Fixing-Communication", ofType: "mp3")!))
    
    static let glassDoorSlideClose = AmongSound(name: "Glass Door Slide Close", imgName: "SabotageImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Glass-Door-Slide-Close", ofType: "mp3")!))
    
    static let impostorWin = AmongSound(name: "Impostor Win", imgName: "impostorImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Impostor-Win", ofType: "mp3")!))
    
    static let joiningLobby = AmongSound(name: "Joining Lobby", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Joining-Lobby", ofType: "mp3")!))
    
    static let kill = AmongSound(name: "Kill", imgName: "killImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Kill", ofType: "mp3")!))
    
    static let lightSwitch = AmongSound(name: "Light Switch", imgName: "SabotageImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Light-Switch", ofType: "mp3")!))
    
    static let mainTheme = AmongSound(name: "Main Theme", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Main-Theme", ofType: "mp3")!))
    
    static let medbayScan = AmongSound(name: "Medbay Scan", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Medbay-Scan", ofType: "mp3")!))
    
    static let message = AmongSound(name: "Message", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Message", ofType: "mp3")!))
    
    static let playerSpawn = AmongSound(name: "Player Spawn", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Player-Spawn", ofType: "mp3")!))
    
    static let reactorMeldown = AmongSound(name: "Reactor Meldown", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Reactor-Meldown", ofType: "mp3")!))
    
    static let reactorPlaceHand = AmongSound(name: "Reactor Place Hand", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Reactor-Place-Hand", ofType: "m4a")!))
    
    static let roleReveal = AmongSound(name: "Role Reveal", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Role-Reveal", ofType: "mp3")!))
    
    static let spaceshipAmbianceLobby = AmongSound(name: "Spaceship Ambiance Lobby", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Spaceship-Ambiance-Lobby", ofType: "mp3")!))
    
    static let taskComplete = AmongSound(name: "Task Complete", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Task-Complete", ofType: "mp3")!))
    
    static let ventMove = AmongSound(name: "Vent Move", imgName: "ventImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Vent-Move", ofType: "mp3")!))
    
    static let ventOut = AmongSound(name: "Vent Out", imgName: "ventImg", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Vent-Out", ofType: "mp3")!))
    
    static let voteLockIn = AmongSound(name: "Vote Lock In", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Vote-Lock-In", ofType: "mp3")!))
    
    static let voteOtherVoted = AmongSound(name: "Vote Other Voted", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Vote-Other-Voted", ofType: "m4a")!))
    
    static let voteTimer = AmongSound(name: "Vote Timer", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Vote-Timer", ofType: "m4a")!))
    
    static let walkingCarpet = AmongSound(name: "Walking Carpet", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Carpet", ofType: "mp3")!))
    
    static let walkingConcrete = AmongSound(name: "Walking Concrete", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Concrete", ofType: "mp3")!))
    
    static let walkingDirt = AmongSound(name: "Walking Dirt", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Dirt", ofType: "mp3")!))
    
    static let walkingGlass = AmongSound(name: "Walking Glass", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Glass", ofType: "mp3")!))
    
    static let walkingGravel = AmongSound(name: "Walking Gravel", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Gravel", ofType: "m4a")!))
    
    static let walkingHardwood = AmongSound(name: "Walking Hardwood", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Hardwood", ofType: "mp3")!))
    
    static let walkingMetal = AmongSound(name: "Walking Metal", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Metal", ofType: "mp3")!))
    
    static let walkingSnow = AmongSound(name: "Walking Snow", imgName: "among", soundURL: URL(fileURLWithPath: Bundle.main.path(forResource: "Walking-Snow", ofType: "mp3")!))
}

var soundList:[AmongSound] = [AmongSounds.allVoteTyping,
                              AmongSounds.astroidHit,
                              AmongSounds.astroidShoot,
                              AmongSounds.beverage,
                              AmongSounds.bodyFound,
                              AmongSounds.buyingBeverage,
                              AmongSounds.commsRadio,
                              AmongSounds.crewWin,
                              AmongSounds.crisis,
                              AmongSounds.death1,
                              AmongSounds.death2,
                              AmongSounds.death3,
                              AmongSounds.death4,
                              AmongSounds.decontaminationGas,
                              AmongSounds.doorCloseSabotage,
                              AmongSounds.doorOpenSabotage,
                              AmongSounds.ejectLava,
                              AmongSounds.electricZappingSnow,
                              AmongSounds.emergencyMeeting,
                              AmongSounds.engineZapping,
                              AmongSounds.fixingCommunication,
                              AmongSounds.glassDoorSlideClose,
                              AmongSounds.impostorWin,
                              AmongSounds.joiningLobby,
                              AmongSounds.kill,
                              AmongSounds.lightSwitch,
                              AmongSounds.mainTheme,
                              AmongSounds.medbayScan,
                              AmongSounds.message,
                              AmongSounds.playerSpawn,
                              AmongSounds.reactorMeldown,
                              AmongSounds.reactorPlaceHand,
                              AmongSounds.roleReveal,
                              AmongSounds.spaceshipAmbianceLobby,
                              AmongSounds.taskComplete,
                              AmongSounds.ventMove,
                              AmongSounds.ventOut,
                              AmongSounds.voteLockIn,
                              AmongSounds.voteOtherVoted,
                              AmongSounds.voteTimer,
                              AmongSounds.walkingCarpet,
                              AmongSounds.walkingConcrete,
                              AmongSounds.walkingDirt,
                              AmongSounds.walkingGlass,
                              AmongSounds.walkingGravel,
                              AmongSounds.walkingHardwood,
                              AmongSounds.walkingMetal,
                              AmongSounds.walkingSnow
]

// SOUNDLARI YUKARIDAKİ GİBİ KAYDETMEK YERİNE AMONGSOUND TARZI BİR CLASS AÇ VE CLASS İÇİNE İŞTE İSİM VB. GİR. DAHA SONRA ONLARI STATİC LET OLARAK ENUMA KAYDET VEYA STRUCTA.
