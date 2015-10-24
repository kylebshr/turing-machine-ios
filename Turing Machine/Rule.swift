//
//  Rule.swift
//  Turing Machine
//
//  Created by Kyle Bashour on 6/21/15.
//  Copyright (c) 2015 Kyle Bashour. All rights reserved.
//

import Foundation

struct Rule {
    var write: Character
    var shift: Character
    var newState: Character
}

struct RuleKey {
    var state: Character
    var reading: Character
}

extension RuleKey: Hashable {

    var hashValue: Int {
        return state.hashValue ^ reading.hashValue
    }
}

func ==(lhs: RuleKey, rhs: RuleKey) -> Bool {
    return lhs.state == rhs.state && lhs.reading == rhs.reading
}