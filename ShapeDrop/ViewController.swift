//
//  ViewController.swift
//  ShapeDrop
//
//  Created by Chandler on 4/2/17.
//  Copyright © 2017 C-LongDev. All rights reserved.
//

import UIKit
import Foundation
import CoreMotion

class ViewController: UIViewController {
    
    var shapes: [UIView] = []
    var animator: UIDynamicAnimator!
    var collision: UICollisionBehavior!
    var gravity: UIGravityBehavior!
    

    override func viewDidLoad() {
        super.viewDidLoad()


        
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tapped(_:)))
        view.addGestureRecognizer(tap)
        view.isUserInteractionEnabled = true
        
        animator = UIDynamicAnimator(referenceView: self.view)
        
        collision = UICollisionBehavior(items: shapes)
        gravity = UIGravityBehavior(items: shapes)
        
        collision.translatesReferenceBoundsIntoBoundary = true
        
        animator.addBehavior(collision)
        animator.addBehavior(gravity)
    }
    
    func tapped(_ sender: UITapGestureRecognizer) {
        let point = sender.location(in: view)
        createShape(at: point, in: view)
        collision.addItem(shapes.last!)
        gravity.addItem(shapes.last!)
    }
    
    func createShape(at point: CGPoint, in view: UIView) {
        let randomShape = arc4random_uniform(2)
        let size = CGSize(width: view.frame.width/10, height: view.frame.width/10)
        let itemBehaviour = UIDynamicItemBehavior(items: shapes)
        let color = getRandomColor()
        
        if randomShape == 0 {
            let square = Rectangle(center: point, size: size, color: color)
            shapes.append(square)
            itemBehaviour.elasticity = 0.6
            animator.addBehavior(itemBehaviour)
            view.addSubview(square)
        }
        else {
            let circle = Circle(frame: CGRect(x: point.x, y: point.y, width: 60, height: 60), color: color)
            shapes.append(circle)
            itemBehaviour.elasticity = 0.5
            animator.addBehavior(itemBehaviour)
            view.addSubview(circle)
        }
    }
    
    func getRandomColor() -> UIColor {
        var colors = [Color.blue, Color.green,
                      Color.orange, Color.purple,
                      Color.red,Color.yellow]
        
        let colorPicked = Int(arc4random_uniform(UInt32(colors.count)))
        return colors[colorPicked]
    }
    
}

