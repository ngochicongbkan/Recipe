//
//  This.swift
//  Recipe
//
//  Created by CongCong on 11/14/14.
//  Copyright (c) 2014 CongCong. All rights reserved.
//
import UIKit
import Foundation

class This {
    private var image1: UIImage
    private var image2: UIImage
    private var image3: UIImage
    private var image4: UIImage
    private var image5: UIImage
    private var image6: UIImage
    var text1: String
    var text2: String

    var imageCall1: UIImage {
        get {
            return image1
        }
    }
    var imageCall2: UIImage {
        get {
            return image2
        }
    }
    var imageCall3: UIImage {
        get {
            return image3
        }
    }
    var imageCall4: UIImage {
        get {
            return image4
        }
    }
    var imageCall5: UIImage {
        get {
            return image5
        }
    }
    var imageCall6: UIImage {
        get {
            return image6
        }
    }

    init(imagePath1: String, imagePath2: String,imagePath3: String, imagePath4: String, imagePath5: String, imagePath6: String, text1: String, text2: String) {
        self.image1 = UIImage(named: imagePath1)!
        self.image2 = UIImage(named: imagePath2)!
        self.image3 = UIImage(named: imagePath3)!
        self.image4 = UIImage(named: imagePath4)!
        self.image5 = UIImage(named: imagePath5)!
        self.image6 = UIImage(named: imagePath6)!
        self.text2 = text2
        self.text1 = text1
    }
}