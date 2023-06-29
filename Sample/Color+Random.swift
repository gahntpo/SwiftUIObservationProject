//
//  Color+Random.swift
//  ManagingModelDataSample
//
//  Created by Karin Prater on 29.06.23.
//  Copyright © 2023 Apple. All rights reserved.
//

import SwiftUI

extension Color {
    /// Return a random color
    static var random: Color {
        return Color(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1)
        )
    }
}
