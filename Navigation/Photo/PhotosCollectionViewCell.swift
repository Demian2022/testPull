//
//  PhotosCollectionViewCell.swift
//  Navigation
//
//  Created by Mac ыыы on 13.03.2023.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    private let collectionImage: UIImageView = {
            let collectionImage = UIImageView()
            collectionImage.contentMode = .scaleAspectFill
            collectionImage.clipsToBounds = true
    //        collectionImage.translatesAutoresizingMaskIntoConstraints = false
            return collectionImage
        }()


        override init(frame: CGRect) {
            super.init(frame: frame)
            backgroundColor = .systemGray2
            collectionImage.layer.cornerRadius = 10
            contentView.addSubview(collectionImage)
    //        layput()

        }

        required init?(coder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }

    //     func setupCell() {
    //        contentView.backgroundColor = .red
    //         contentView.layer.cornerRadius = 10
    //         contentView.addSubview(collectionImage)
    //    }
    //
        override func prepareForReuse() {
            super.prepareForReuse()
            collectionImage.image = nil
        }

        func setupCell(model: PhotoImage) {
            collectionImage.image = model.image
        }

        override func layoutSubviews() {
            super.layoutSubviews()
            collectionImage.frame = contentView.bounds
        }
        
    //    func layput() {
    //        contentView.addSubview(collectionImage)
            
    //        NSLayoutConstraint.activate([
    //            collectionImage.topAnchor.constraint(equalTo: contentView.topAnchor),
    //            collectionImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor),
    //            collectionImage.trailingAnchor.constraint(equalTo: contentView.trailingAnchor),
    //            collectionImage.bottomAnchor.constraint(equalTo: contentView.bottomAnchor),
    //        ])
            
            
    //    }

}
