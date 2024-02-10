//
//  UIStackView+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { addArrangedSubview($0) }
    }
}
