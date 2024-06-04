//
//  Item.swift
//  aldodevv
//
//  Created by Akhmad Aldo Sari on 04/06/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
