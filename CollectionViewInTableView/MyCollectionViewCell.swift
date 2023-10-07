//
//  MyCollectionViewCell.swift
//  CollectionViewInTableView
//
//  Created by Mac on 02/10/23.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    public func configure(with model:Model){
        self.label.text = model.text
        self.imageView.image = UIImage(named: model.imageName)
//        self.imageView.contentMode = .scaleAspectFill
    }

}
