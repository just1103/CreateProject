//
//  UICollectionView+.swift
//  CreateProject
//
//  Created by Hyoju Son on 2/11/24.
//

import UIKit

extension UICollectionView {
    // MARK: - Cell
    func register<T: UICollectionViewCell>(cellType: T.Type) {
        register(cellType, forCellWithReuseIdentifier: T.reuseIdentifier)
    }

    func dequeueReusableCell<T: UICollectionViewCell>(
        cellType: T.Type,
        for indexPath: IndexPath
    ) -> T {
        guard let cell = dequeueReusableCell(withReuseIdentifier: T.reuseIdentifier, for: indexPath) as? T else {
            return T()
        }

        return cell
    }

    // MARK: - Header/Footer
    enum SupplementaryViewKind {
        case header
        case footer

        var elementKind: String {
            switch self {
            case .header:
                return UICollectionView.elementKindSectionHeader
            case .footer:
                return UICollectionView.elementKindSectionFooter
            }
        }
    }

    func register<T: UICollectionReusableView>(
        cellType: T.Type,
        supplementaryViewKind: SupplementaryViewKind
    ) {
        register(
            cellType,
            forSupplementaryViewOfKind: supplementaryViewKind.elementKind,
            withReuseIdentifier: T.reuseIdentifierForSupplementaryView
        )
    }

    func dequeueReusableSupplementaryView<T: UICollectionReusableView>(
        cellType: T.Type,
        supplementaryViewKind: SupplementaryViewKind,
        for indexPath: IndexPath
    ) -> T {
        guard let reusableView = dequeueReusableSupplementaryView(
            ofKind: supplementaryViewKind.elementKind,
            withReuseIdentifier: T.reuseIdentifierForSupplementaryView,
            for: indexPath
        ) as? T else {
            return T()
        }

        return reusableView
    }
}

extension UICollectionViewCell {
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}

extension UICollectionReusableView {
    static var reuseIdentifierForSupplementaryView: String {
        return String(describing: self)
    }
}
