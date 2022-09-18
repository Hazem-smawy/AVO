//
//  FactModel.swift
//  AVO
//
//  Created by hazem smawy on 9/18/22.
//

import SwiftUI

// MARK: - Fact Model

struct Fact: Identifiable  {
    var id  = UUID()
    var image: String
    var content: String
}
