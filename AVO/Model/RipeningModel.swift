//
//  RipeningModel.swift
//  AVO
//
//  Created by hazem smawy on 9/18/22.
//

import SwiftUI

// MARK: - Ripening Model

struct Ripening:Identifiable {
    var id = UUID()
    var image:String
    var stage:String
    var title: String
    var description: String
    var ripeness:String
    var instruction: String
}
