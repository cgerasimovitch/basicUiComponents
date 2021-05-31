//
//  ProfileHeaderView.swift
//  Navigation
//
//  Created by Admin on 5/29/21.
//  Copyright © 2021 Artem Novichkov. All rights reserved.
//

import UIKit
class ProfileHeaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        let imageName = "cat.png"
        let image = UIImage(named: imageName)
        let resultedImageView = UIImageView(image: image)
        resultedImageView.frame = CGRect(x: 16, y: superview?.frame.minY ?? 0 + 16, width: 100, height: 100)
        resultedImageView.layer.borderColor = UIColor.white.cgColor
        resultedImageView.layer.borderWidth = 3
        resultedImageView.layer.cornerRadius = 50
        addSubview(resultedImageView)
        
        
       
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
