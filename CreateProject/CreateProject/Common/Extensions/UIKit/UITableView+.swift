//
//  UITableView+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import UIKit

extension UITableView {
    func register<T: UITableViewHeaderFooterView>(_ viewType: T.Type) {
        register(viewType, forHeaderFooterViewReuseIdentifier: String(describing: viewType))
    }

    func dequeueReusableHeaderFooterView<T: UITableViewHeaderFooterView>(of viewType: T.Type) -> T {
        guard let view = dequeueReusableHeaderFooterView(withIdentifier: String(describing: viewType)) as? T else {
            return T()
        }

        return view
    }
}
