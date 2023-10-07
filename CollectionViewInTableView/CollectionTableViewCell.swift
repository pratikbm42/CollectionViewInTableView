//
//  CollectionTableViewCell.swift
//  CollectionViewInTableView
//
//  Created by Mac on 02/10/23.
//

import UIKit

class CollectionTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource {
   
    var models = [Model]()


    @IBOutlet weak var collectionView: UICollectionView!
    
    func nib(){
        let nibExtract = UINib(nibName: "MyCollectionViewCell", bundle: nil)
        collectionView.register(nibExtract, forCellWithReuseIdentifier: "cell2")
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        nib()
        
        collectionView.delegate = self
        collectionView.dataSource = self
    }

    func configure(with models: [Model]){
        var shuffleModels = models                      //for shuffle the data
        
        shuffleModels.shuffle()                         //for shuffle the data
        self.models = shuffleModels
        collectionView.reloadData()
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return models.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! MyCollectionViewCell
        
        cell.configure(with: models[indexPath.row])
        return cell
    }
    

}


