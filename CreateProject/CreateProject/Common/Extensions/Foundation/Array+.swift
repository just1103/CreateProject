//
//  Array+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import Foundation

extension Array {
    subscript(safe index: Int) -> Element? {
        return indices ~= index ? self[index] : nil
    }
}
