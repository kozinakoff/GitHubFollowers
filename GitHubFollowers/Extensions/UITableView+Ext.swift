//
//  UITableView+Ext.swift
//  GitHubFollowers
//
//  Created by ANDREY VORONTSOV on 18.11.2020.
//

import UIKit

extension UITableView {
    
    
    /// Reloads TableView's data on main thread
    /// - Parameter action: a code that should be invoked after reloading the data
    func reloadDataOnMainThread(action: @escaping () -> Void) {
        DispatchQueue.main.async {
            self.reloadData()
            action()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
    
}
