//
//  PostingCollectionViewCell.swift
//  store
//
//  Created by 황수비 on 2022/11/21.
//

//collection view에서 일어나는 모든 것들
import Foundation
import UIKit
class PostingCollectionViewCell: UICollectionViewCell {


    @IBOutlet weak var postImage: UIImageView!
    
    var imageName : String = "" {
        didSet{
            print("PostingCollectionViewCell / imageName - didSet() : \(imageName)")
            // 쏄의 UI 설정
            self.postImage.image = UIImage(systemName: imageName)
        }
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        print("MyCollectionViewCell - awakeFromNib() called")
        self.contentView.backgroundColor = #colorLiteral(red: 0.9764705896, green: 0.850980401, blue: 0.5490196347, alpha: 1)
        self.contentView.layer.cornerRadius = 8
        contentView.layer.borderWidth = 1
        contentView.layer.borderColor = #colorLiteral(red: 0.3647058904, green: 0.06666667014, blue: 0.9686274529, alpha: 1)
    }
    
}
