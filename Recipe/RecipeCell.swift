//
//  RecipeCell.swift
//  Recipe
//
//  Created by CongCong on 11/14/14.
//  Copyright (c) 2014 CongCong. All rights reserved.
//

import UIKit

class RecipeCell: UITableViewCell {
    var thumb = UIScrollView()
    var heart = UIImageView()
    var profile = UIButton()
    
    var label1 = UILabel()
    var label2 = UILabel()
    
    var button1 = UIButton()
    
    var inView = UIView()
    var image1 = UIImageView()
    var image2 = UIImageView()
    var image3 = UIImageView()
    var image4 = UIImageView()
    var image5 = UIImageView()

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
    override func layoutSubviews() {
        
        thumb.backgroundColor = UIColor.greenColor()
        inView.backgroundColor = UIColor.grayColor()
        self.contentView.addSubview(thumb)
        
        self.contentView.addSubview(label1)
        self.contentView.addSubview(label2)
        self.contentView.addSubview(button1)

        self.contentView.addSubview(profile)
        self.contentView.addSubview(heart)
        
        self.thumb.addSubview(inView)
        self.inView.addSubview(image1)
        self.inView.addSubview(image2)
        self.inView.addSubview(image3)
        self.inView.addSubview(image4)
        self.inView.addSubview(image5)
        
        let x: Double = Double(self.contentView.bounds.height - 24)
        
         // scrollView.contentSize = image.size
        thumb.contentInset = UIEdgeInsetsMake(0.0,0.0,-24,500)
        
        
        thumb.setTranslatesAutoresizingMaskIntoConstraints(false)
        heart.setTranslatesAutoresizingMaskIntoConstraints(false)
        profile.setTranslatesAutoresizingMaskIntoConstraints(false)
        label1.setTranslatesAutoresizingMaskIntoConstraints(false)
        label2.setTranslatesAutoresizingMaskIntoConstraints(false)
        button1.setTranslatesAutoresizingMaskIntoConstraints(false)
        inView.setTranslatesAutoresizingMaskIntoConstraints(false)
        image1.setTranslatesAutoresizingMaskIntoConstraints(false)
        image2.setTranslatesAutoresizingMaskIntoConstraints(false)
        image3.setTranslatesAutoresizingMaskIntoConstraints(false)
        image4.setTranslatesAutoresizingMaskIntoConstraints(false)
        image5.setTranslatesAutoresizingMaskIntoConstraints(false)

        
        let views = ["contentView": self.contentView, "thumb": thumb, "label1": label1, "label2": label2,"button1": button1]
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[thumb]-6-[label1(18)]-10-|", options: nil, metrics: nil, views: views))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[thumb]-0-|", options: nil, metrics: nil, views: views))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-80-[label1(>=30)]", options: nil, metrics: nil, views: views))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[label2(>=3)]-2-[button1(20)]-40-|", options: nil, metrics: nil, views: views))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[label2(14)]-10-|", options: nil, metrics: nil, views: views))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[button1(20)]-10-|", options: nil, metrics: nil, views: views))
        
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-20-[heart(20)]", options: nil, metrics: nil, views: ["contenview": self.contentView, "heart": heart]))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:[heart(20)]-20-|", options: nil, metrics: nil, views: ["contenview": self.contentView, "heart": heart]))
        
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[profile(60)]-10-|", options: nil, metrics: nil, views: ["contentView": self.contentView, "profile": profile]))
        self.contentView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-10-[profile(60)]", options: nil, metrics: nil, views: ["contentView": self.contentView, "profile": profile]))
        
        let viewss = ["inView": self.inView, "image1": image1, "image2": image2, "image3": image3, "image4": image4, "image5": image5]
        
        let metrics = ["x": x]
        
        self.thumb.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[inView]-0-|", options: nil, metrics: nil, views: ["thumb": self.thumb, "inView": self.inView]))
        self.thumb.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[inView]", options: nil, metrics: nil, views: ["thumb": self.thumb, "inView": self.inView]))
        
        self.inView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:|-0-[image1(x)]-0-|", options: nil, metrics: metrics, views: viewss))
        self.inView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("H:|-0-[image1(100)]-0-[image2(100)]-0-[image3(100)]-0-[image4(100)]-0-[image5(100)]", options: nil, metrics: nil, views: viewss))
        self.inView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[image2(==image1)]", options: nil, metrics: nil, views: viewss))
        self.inView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[image3(==image1)]", options: nil, metrics: nil, views: viewss))
        self.inView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[image4(==image1)]", options: nil, metrics: nil, views: viewss))
        self.inView.addConstraints(NSLayoutConstraint.constraintsWithVisualFormat("V:[image5(==image1)]", options: nil, metrics: nil, views: viewss))

        
        heart.image = UIImage(named: "heard.png")
        button1.setImage(UIImage(named:"like.png"), forState: UIControlState.Normal)
      
        self.profile.layer.cornerRadius = self.profile.frame.size.width / 2
        self.profile.clipsToBounds = true
        self.profile.layer.borderWidth = CGFloat(3.0)
        self.profile.layer.borderColor = UIColor.whiteColor().CGColor
//        self.profileImageView.layer.cornerRadius = self.profileImageView.frame.size.width / 2;
//        self.profileImageView.clipsToBounds = YES;
//        
//        self.profileImageView.layer.borderWidth = 3.0f;
//        self.profileImageView.layer.borderColor = [UIColor whiteColor].CGColor;
        
        
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
