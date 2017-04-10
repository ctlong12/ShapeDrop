//
//  Rectangle.swift
//  Shapes
//
//  Created by Chandler on 4/2/17.
//  Copyright © 2017 C-LongDev. All rights reserved.
//

import UIKit
import Foundation

class Rectangle: UIView {
    
    override var collisionBoundsType: UIDynamicItemCollisionBoundsType {
        get {
            return .rectangle
        }
    }

    override init(frame: CGRect) {
        super.init(frame: frame)
    }
    
    convenience init(frame: CGRect, color: UIColor) {
        self.init(frame: frame)
        self.backgroundColor = color
    }
    
    convenience init(center: CGPoint, size: CGSize, color: UIColor) {
        let origin = CGPoint(x: center.x - (size.width / 2), y: center.y - (size.height / 2))
        self.init(frame: CGRect(origin: origin, size: size))
        self.backgroundColor = color
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }


}
