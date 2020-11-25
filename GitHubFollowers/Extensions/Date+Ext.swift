//
//  Date+Ext.swift
//  GitHubFollowers
//
//  Created by ANDREY VORONTSOV on 03.11.2020.
//

import Foundation

extension Date {
    
    func convertToMonthYearFormat() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "MMM yyyy"
        return dateFormatter.string(from: self)
    }    
}
