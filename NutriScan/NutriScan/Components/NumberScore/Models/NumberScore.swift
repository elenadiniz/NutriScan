//
//  NumberScore.swift
//  NutriScan
//
//  Created by Mateus Andreatta on 27/09/25.
//

import SwiftUI

enum NumberScore {
    case scoreA
    case scoreB
    case scoreC
    case scoreD
    case scoreE
}

extension NumberScore {
    public var label: String {
        switch self {
        case .scoreA:
            return "A"
        case .scoreB:
            return "B"
        case .scoreC:
            return "C"
        case .scoreD:
            return "D"
        case .scoreE:
            return "E"
        }
    }
    
    public var color: Color {
        switch self {
        case .scoreA:
            return .scoreA
        case .scoreB:
            return .scoreB
        case .scoreC:
            return .scoreC
        case .scoreD:
            return .scoreD
        case .scoreE:
            return .scoreE
        }
    }
}

