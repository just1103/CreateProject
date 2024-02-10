//
//  CGFloat+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import Foundation

extension CGFloat {
    func truncate(to digits: Int) -> CGFloat {
        let multiplier = pow(10.0, CGFloat(digits))
        return floor(self * multiplier) / multiplier
    }

    func ceiling(to digits: Int) -> CGFloat {
        let multiplier = pow(10.0, CGFloat(digits))
        return ceil(self * multiplier) / multiplier
    }
}
