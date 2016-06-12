//
//  ViewController.swift
//  Todo-MND-Swift
//
//  Created by dev on 6/12/16.
//  Copyright © 2016 zfx5130. All rights reserved.
//

import UIKit

struct Vector2D {
    var x = 0.0, y = 0.0
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        var toBeDoubled = Vector2D(x: 1.0, y: 4.0)
        let afterDoubling = +++toBeDoubled
        print(afterDoubling)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}

prefix operator +++ {}
prefix func +++ (inout vector: Vector2D) -> Vector2D {
    vector += vector
    return vector
}

func += (inout left: Vector2D, right: Vector2D) {
    left = left + right
}

func + (left: Vector2D, right: Vector2D) -> Vector2D {
    return Vector2D(x: left.x + right.x, y: left.y + right.y)
}