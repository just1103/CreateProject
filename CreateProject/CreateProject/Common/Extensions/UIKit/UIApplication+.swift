//
//  UIApplication+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import UIKit

extension UIApplication {
    var keyWindowOfScenes: UIWindow? {
        return connectedScenes
            .first(where: { $0 is UIWindowScene })
            .flatMap({ $0 as? UIWindowScene })?.windows
            .first(where: \.isKeyWindow)
    }
}
