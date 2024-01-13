//
//  ViewController.swift
//  Zukan
//
//  Created by . HIKARU on 2024/01/11.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var nameLabel : UILabel!
    @IBOutlet var setumeiLabel : UILabel!
    @IBOutlet var imageview : UIImageView!
    var animalArray : [Animal] = [
       Animal(name: "キリン", setumei: "アフリカのサバンナに住んでいる。舌がとても長い。頭に生えたツノも特徴的",imagename: "kirin.jpg")
      , Animal(name:"オウサマペンギン", setumei: "キングペンギンとも呼ばれる南極の島々に生息し、魚類やイカなどを食べる" , imagename:
                "penguin.jpg")
       , Animal(name: "カンガルー", setumei: "オーストラリア固有の動物で、お腹に袋を持つ有袋類の一種。走るのが速い", imagename:"kangaroo.jpg")
    ]
    var index : Int = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setUI()
    }
    @IBAction func next() {
        if index == animalArray.count - 1 {
            index = 0
        } else {
            index += 1
        }
            setUI()
        }
    @IBAction func buck() {
        if  index == 0 {
            index = animalArray.count - 1
        } else {
            index -= 1
        }
            setUI()
    }
    func setUI() {
        imageview.image = animalArray[index].getImage()
        nameLabel.text = animalArray[index].name
        setumeiLabel.text = animalArray[index].setumei
       
    }

}

