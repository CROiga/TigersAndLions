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
    
    var myTigers:[Tiger] = []    // creating empty myTigers Array (INICIALIZED and accessible in all functions, not just in viewDidLoad)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.age = 3
        myTiger.breed = "Bengal Tiger"
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTigers.append(myTiger) // appending instance myTiger to myTigers Array
        
        println("My tiger is a \(myTiger.age) year old \(myTiger.breed), named \(myTiger.name).")
        
        myImageView.image = myTiger.image    //  4 IBOutlets to display in user interface
        nameLabel.text = myTiger.name        //  with updated data from myTiger instance
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
        
        myTigers += [secondTiger, thirdTiger, forthTiger] // adding the rest of tigers to myTigers Array
        
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBarButtonPressed(sender: UIBarButtonItem) {
        let randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        let tiger = myTigers[randomIndex]
        
//        myImageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            
                    self.myImageView.image = tiger.image
                    self.nameLabel.text = tiger.name
                    self.ageLabel.text = "\(tiger.age)"
                    self.breedLabel.text = tiger.breed
            
            }, completion: {
                (finished:Bool) -> () in
        })
    }
}

