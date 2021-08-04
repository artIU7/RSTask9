//
// 📰 🐸 
// Project: RSSchool_T9
// 
// Author: Артем Стратиенко
// On: 04.08.2021
// 
// Copyright © 2021 RSSchool. All rights reserved.

import UIKit

class GaleryCell: UICollectionViewCell {
    
    static let cellID = "GaleryCell"
    let contentType = FillingData.data
    let titleLabel = UILabel()
    let typeLabel = UILabel()
    let imageView = UIImageView()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setupCell(indexCell: Int) {
        
        imageView.frame = CGRect(x: 8, y: 10, width: self.bounds.width - 16, height: self.bounds.height - 20)
        imageView.contentMode = .scaleAspectFill
        imageView.clipsToBounds = true
        imageView.layer.borderWidth = 1
        imageView.layer.cornerRadius = 12
        imageView.layer.borderColor = UIColor.black.cgColor
        
        self.backgroundColor = .white
        self.layer.borderWidth = 1
        self.layer.cornerRadius = 16
        self.layer.borderColor = UIColor.black.cgColor
        
        
     
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font.withSize(0.055*self.frame.height)
        titleLabel.numberOfLines = 1
        titleLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        
        typeLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font.withSize(0.035*self.frame.height)
        typeLabel.textColor = #colorLiteral(red: 0.9568627451, green: 0.5843137255, blue: 1, alpha: 1)
        
        //add info on cell
        let content = contentType[index]
        
        switch content {
        
        case .gallery(let galery):
            imageView.image = galery.coverImage
            titleLabel.text = galery.title
            typeLabel.text = galery.type
        case .story(let story):
            imageView.image = story.coverImage
            titleLabel.text = story.title
            typeLabel.text = story.type
        }
        
        self.addSubview(imageView)
        self.addSubview(titleLabel)
        self.addSubview(typeLabel)
        
        setLabelConstraints ()
    }

    func setLabelConstraints() {
        titleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: self.frame.height * 0.70).isActive = true
      
        titleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: self.frame.width * 0.05).isActive = true
        titleLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -(self.frame.width * 0.05)).isActive = true
        
    
        typeLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: self.frame.height * 0.015).isActive = true
        
        typeLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: self.frame.width * 0.07).isActive = true
        
        typeLabel.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
    }
}
