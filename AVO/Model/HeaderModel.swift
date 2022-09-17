//
//  HeaderModel.swift
//  AVO
//
//  Created by hazem smawy on 9/17/22.
//

import SwiftUI

// MARK: - Header Model

struct Header: Identifiable {
    var id = UUID()
    var image: String
    var headline: String
    var subheadline: String
}
