//
//  UIImage+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import UIKit

extension UIImage {
    var template: UIImage {
        withRenderingMode(.alwaysTemplate)
    }

    func resized(with size: CGSize) -> UIImage {
        return UIGraphicsImageRenderer(size: size).image { _ in
            draw(in: CGRect(origin: .zero, size: size))
        }
    }
}
