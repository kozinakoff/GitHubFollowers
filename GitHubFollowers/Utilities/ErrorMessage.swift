//
//  ErrorMessage.swift
//  GitHubFollowers
//
//  Created by ANDREY VORONTSOV on 20.10.2020.
//

import Foundation

enum ErrorMessage: String {
    case invalidUsername = "This username created an invalid request. Please try again."
    case unableToComplete = "Unable to coplete your request. Please check your internet connection."
    case invalidResponse = "Invalid response from the server. Please try again."
    case invalidData = "The data received from the server was invalid. Please try again"
    
}
