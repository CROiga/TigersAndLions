//
//  ViewController.swift
//  TigersAndLions
//
//  Created by Igor Majer on 9.10.2014..
//  Copyright (c) 2014. Igor Majer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengal Tiger"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        println("My tiger is a \(myTiger.age) year old \(myTiger.breed), named \(myTiger.name).")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.age = 2
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.age = 4
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        var forthTiger = Tiger()
        forthTiger.name = "Spar"
        forthTiger.age = 5
        forthTiger.breed = "Siberian Tiger"
        forthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
    }

}

