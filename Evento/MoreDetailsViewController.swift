//
//  MoreDetailsViewController.swift
//  Evento
//
//  Created by Saransh Mittal on 22/07/18.
//  Copyright © 2018 Saransh Mittal. All rights reserved.
//

import UIKit

class MoreDetailsViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = speakersCollectionView.dequeueReusableCell(withReuseIdentifier: "speakers", for: indexPath)
        return cell
    }
    
    @IBOutlet weak var speakersCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speakersCollectionView.dataSource = self
        speakersCollectionView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}
