//
//  PhotosViewController.swift
//  Navigation
//
//  Created by Mac ыыы on 13.03.2023.
//

import UIKit

class PhotosViewController: UIViewController {

    let models = PhotoImage.myPhoto()
      
          private let collectioView: UICollectionView = {
              let layout = UICollectionViewFlowLayout()
      //        layout.scrollDirection = .horizontal
      
              let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
              collectionView.translatesAutoresizingMaskIntoConstraints = false
              collectionView.backgroundColor = .systemGray2
              collectionView.register(PhotosCollectionViewCell.self, forCellWithReuseIdentifier: PhotosCollectionViewCell.identifier)
              return collectionView
          }()
      
          override func viewDidLoad() {
              super.viewDidLoad()
              layout()
              setupCollectioView()
          }
      
          override func viewDidLayoutSubviews() {
              super.viewDidLayoutSubviews()
              collectioView.frame = view.bounds
          }
      
          private func setupCollectioView() {
              collectioView.dataSource = self
              collectioView.delegate = self
          }
      
      
          private func layout() {
              view.addSubview(collectioView)
      
              NSLayoutConstraint.activate([
                  collectioView.topAnchor.constraint(equalTo: view.topAnchor),
                  collectioView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
                  collectioView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
                  collectioView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
      //            collectioView.heightAnchor.constraint(equalTo: collectioView.widthAnchor, multiplier: 0.5),
              ])
          }
      
      }
      
      //MARK: - UICollectionViewDataSource
      extension PhotosViewController: UICollectionViewDataSource {
          func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      
              return models.count
          }
      
          func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
              let cell = collectionView.dequeueReusableCell(withReuseIdentifier: PhotosCollectionViewCell.identifier, for: indexPath) as! PhotosCollectionViewCell
      
              cell.setupCell(model: models[indexPath.row])
              return cell
          }
      
      }
      
      //MARK: - UICollectionViewDelegateFlowLayout
      extension PhotosViewController: UICollectionViewDelegateFlowLayout {
          private var sideIndet: CGFloat { return 8 }
          private var elementCount: CGFloat { return 4 }
          private var insertCount: CGFloat { return elementCount + 1 }
      
      
      
          func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
      
              let width = (collectionView.bounds.width - sideIndet * insertCount) / elementCount
              return CGSize(width: width, height: width)
      //        return CGSize(width: collectionView.frame.width/2.5, height: collectionView.frame.width/2)
          }
      
          func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
      
              return sideIndet
          }
      
      
          func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
              UIEdgeInsets.init(top: sideIndet, left: sideIndet, bottom: sideIndet, right: sideIndet)
      
          }


}
