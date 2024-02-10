//
//  Int+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import Foundation

extension Int {
    var decimalPoint: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.groupingSeparator = ","
        formatter.groupingSize = 3
        return formatter.string(for: self) ?? self.description
    }
}
