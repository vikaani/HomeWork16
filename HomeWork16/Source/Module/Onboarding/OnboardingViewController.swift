//
//  OnboardingViewController.swift
//  HomeWork16
//
//  Created by Vika on 16.04.2024.
//

import UIKit

class OnboardingViewController: UIViewController {
    @IBOutlet private var collectionView: UICollectionView!
    @IBOutlet private var pageControl: UIPageControl!
    @IBOutlet private var goButton: UIButton!
    
    var onTapGo: (() -> ())?
    
    let stages = [
        Stage(title: "Title 1", subtitle: "Description 1"),
        Stage(title: "Title 2", subtitle: "Description 2"),
        Stage(title: "Title 3", subtitle: "Description 3"),
        Stage(title: "Title 4", subtitle: "Description 4"),
        Stage(title: "Title 5", subtitle: "Description 5")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.register(OnboardingCell.self)
    }
    
    @IBAction func didTapGoButton() {
        onTapGo?()
    }
}

// MARK: - UICollectionViewDataSource
extension OnboardingViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        stages.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell: OnboardingCell = collectionView.dequeueReusableCell(indexPath: indexPath)
        
        let currentStage = stages[indexPath.row]
        
        cell.titleLabel.text = currentStage.title
        cell.descriptionLabel.text = currentStage.subtitle
        cell.stepperLabel.text = "STEP \(indexPath.row + 1)"
        
        return cell
    }
    
}

// MARK: - UICollectionViewDelegate
extension OnboardingViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        pageControl.currentPage = indexPath.row
        
        goButton.isHidden = indexPath.row != stages.count - 1
    }
}

// MARK: - UICollectionViewDelegateFlowLayout
extension OnboardingViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        collectionView.bounds.size
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        .zero
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        .zero
    }
}

