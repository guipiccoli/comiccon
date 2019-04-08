//
//  Session.swift
//  Comic-Con
//
//  Created by Guilherme Piccoli on 08/04/19.
//  Copyright © 2019 Guilherme Piccoli. All rights reserved.
//

import Foundation

public struct Session {
    var idSession: Int
    var sessionStart: Date
    var sessionEnds: Date
    var sessionTime: TimeInterval {
        return sessionEnds.timeIntervalSinceReferenceDate - sessionStart.timeIntervalSinceReferenceDate
    }
    
    var speaker: String
    var smallDescription: String
    var bigDescription: String
    var trackLocation: String
}

extension Session {
    
    init(idSession: Int, sessionStartHour: Int, sessionStartMinute: Int, sessionEndHour: Int, sessionEndMinute: Int, speaker: String, smallDescription: String, bigDescription: String, trackLocation: String) {
        
        self.idSession = idSession
        
        let calendar = Calendar.current
        var startComponents = calendar.dateComponents([.day, .hour, .minute], from: Date())
        startComponents.day = 18
        startComponents.hour = sessionStartHour
        startComponents.minute = sessionStartMinute
        self.sessionStart = calendar.date(from: startComponents)!
        
        var endComponents = calendar.dateComponents([.day, .hour, .minute], from: Date())
        endComponents.day = 18
        endComponents.hour = sessionEndHour
        endComponents.minute = sessionEndMinute
        self.sessionEnds = calendar.date(from: endComponents)!
        
        self.speaker = speaker
        self.smallDescription = smallDescription
        self.bigDescription = bigDescription
        self.trackLocation = trackLocation
        
    }
    
}
