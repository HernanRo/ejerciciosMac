//
//  Food.swift
//  FoodApp
//
//  Created by Nicthea Alvarez Platas on 3/7/19.
//  Copyright © 2019 Efrain Alvarez. All rights reserved.
//

import UIKit

class Food: NSObject {
    var name:String?
    var des:String?
    var image:String?
    init(name:String,des:String,image:String) {
        self.name=name
        self.des=des
        self.image=image
    }
}
