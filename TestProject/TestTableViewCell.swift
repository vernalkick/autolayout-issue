//
//  TestTableViewCell.swift
//  TestProject
//
//  Created by Kevin Clark on 2015-06-21.
//  Copyright © 2015 Kevin Clark. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell {

  let imgView: UIImageView = {
    let imageView = UIImageView()
        imageView.backgroundColor = UIColor.redColor()
        imageView.translatesAutoresizingMaskIntoConstraints = false
    return imageView
  }()
  
  override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
    super.init(style: style, reuseIdentifier: reuseIdentifier)
    
    let constraints = [
      imgView.widthAnchor.constraintEqualToConstant(60)!,
      imgView.heightAnchor.constraintEqualToAnchor(imgView.widthAnchor, multiplier: 1.5)!,
      imgView.topAnchor.constraintEqualToAnchor(contentView.topAnchor, constant: 15)!,
      imgView.bottomAnchor.constraintEqualToAnchor(contentView.bottomAnchor, constant: -15)!,
      imgView.leadingAnchor.constraintEqualToAnchor(contentView.layoutMarginsGuide.leadingAnchor)!
    ]
    
    contentView.addSubview(imgView)
    contentView.addConstraints(constraints)
  }
  
  required init(coder aDecoder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }

}
