//
//  PostingCustomCollectionViewCell.swift
//  store
//
//  Created by 황수비 on 2022/11/21.
//

import Foundation
import UIKit
class PostingCustomCollectionViewCell:  UICollectionViewCell {
    
    //닙파일에 image는 weak가 아니라 strong으로 설정해주어야 한다.
    @IBOutlet var postImage: UIImageView!
     
    
    var imageName : String = "" {
        didSet{
            print("PostingCustomCollectionViewCell / imageName - didSet() : \(imageName)")
            // 쏄의 UI 설정
            self.postImage.image = UIImage(systemName: imageName)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("PostingCustomCollectionViewCell - awakeFromNib() called")
        contentView.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1)
        contentView.layer.cornerRadius = 8
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
        
        self.postImage.layer.cornerRadius=postImage.frame.height / 8
        
        
    }

}
 
