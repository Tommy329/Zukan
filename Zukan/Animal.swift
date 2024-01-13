//
//  Animal.swift
//  Zukan
//
//  Created by . HIKARU on 2024/01/11.
//

import UIKit
class Animal {
    var name : String
    var setumei : String
    var imagename : String
    init(name: String, setumei: String, imagename: String) {
        self.name = name
        self.setumei = setumei
        self.imagename = imagename
    }
    func getImage() -> UIImage {
        return UIImage(named: imagename)!
    }
}
