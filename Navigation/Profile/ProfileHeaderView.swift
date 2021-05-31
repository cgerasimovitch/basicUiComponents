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
        //Add UIImageView
        let imageName = "cat.png"
        let image = UIImage(named: imageName)
        let resultedImageView = UIImageView(image: image)
        resultedImageView.frame = CGRect(x: 16, y: superview?.frame.minY ?? 0 + 16, width: 100, height: 100)
        resultedImageView.layer.borderColor = UIColor.white.cgColor
        resultedImageView.layer.borderWidth = 3
        resultedImageView.layer.cornerRadius = 50
        addSubview(resultedImageView)
        
        //Add headerUILabel
        let headerUILabel = UILabel()
        headerUILabel.frame = CGRect(x: resultedImageView.frame.maxX + 20, y: superview?.frame.minY ?? 0 + 16, width: 400, height: 30)
        headerUILabel.font = .systemFont(ofSize: 18, weight: .bold)
        headerUILabel.textColor = .black
        headerUILabel.text = "Hipster Cat"
        addSubview(headerUILabel)
        
        //Add statusUILabel
        let statusUILabel = UILabel()
        statusUILabel.frame = CGRect(x: headerUILabel.frame.origin.x, y: headerUILabel.frame.origin.y + 34, width: headerUILabel.frame.width, height: headerUILabel.frame.height - 2)
        statusUILabel.font = .systemFont(ofSize: 14, weight: .regular)
        statusUILabel.textColor = .gray
        statusUILabel.text = "Waiting for something"
        addSubview(statusUILabel)
        
        //Add showStatusButton
        let showStatusButton = UIButton()
        showStatusButton.frame = CGRect(x: 16, y: 130 + 16, width: window?.frame.width ?? 300 - 32, height: 50)
        showStatusButton.titleLabel?.font = .systemFont(ofSize: statusUILabel.font.pointSize, weight: .regular)
        showStatusButton.setTitle("Show status", for: .normal)
        showStatusButton.titleLabel?.textColor = .white
        //showStatusButton.titleLabel?.text = "Show status"
        showStatusButton.titleLabel?.textAlignment = .center
        showStatusButton.backgroundColor = .blue
        showStatusButton.layer.cornerRadius = 4
        showStatusButton.layer.shadowOffset = CGSize(width: 4, height: 4)
        showStatusButton.layer.shadowRadius = 4
        showStatusButton.layer.shadowColor = UIColor.black.cgColor
        showStatusButton.layer.shadowOpacity = 0.7
        addSubview(showStatusButton)
        
       
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
