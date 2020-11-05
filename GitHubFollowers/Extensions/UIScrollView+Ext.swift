//
//  UIScrollView+Ext.swift
//  GitHubFollowers
//
//  Created by ANDREY VORONTSOV on 05.11.2020.
//

import UIKit

extension UIScrollView {
    /// Sets content offset to the top.
    func resetScrollPositionToTop() {
        self.contentOffset = CGPoint(x: -contentInset.left, y: -contentInset.top)
    }
}
