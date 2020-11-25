//
//  GFAvatarImageView.swift
//  GitHubFollowers
//
//  Created by ANDREY VORONTSOV on 23.10.2020.
//

import UIKit

class GFAvatarImageView: UIImageView {
    
    private let placeholderImage = Images.placeholder
    private let cache = NetworkManager.shared.cache

    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure() {
        layer.cornerRadius = 10
        clipsToBounds = true
        image = placeholderImage
        translatesAutoresizingMaskIntoConstraints = false
    }
    
    /// Downloading an image
    /// - Parameter url: image url
    func downloadImage(fromURL url: String) {
        NetworkManager.shared.downloadImage(from: url) { [weak self] image in
            guard let self = self else { return }
            DispatchQueue.main.async { self.image = image }
        }
    }
}
