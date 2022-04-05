//
//  ViewController.swift
//  garbage
//
//  Created by mobiledev on 13/4/21.
//

import UIKit

class Animal {
    func walk() { print("animal walk") }
    func name() { print("animal name") }
}
class Dog : Animal {
    override func walk() { print("dog walk") }
    func bark() { print("dog bark") }
}
class Cat : Animal {
    //
}

class ViewController: UIViewController, CharacterRecieverDelegate
{
    @IBOutlet weak var btnRace: UIButton!
    
    func receiveData(_ race: String) {
        print("selected race", race)
        btnRace.setTitle(race, for:UIControl.State.normal)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "CharacterSelect")
        {
            
            //force unwrap way
            //(segue.destination as! TheScreenWithOneLabelViewController).delegate = self
            if let destination = segue.destination as? TheScreenWithOneLabelViewController
            {
                destination.delegate = self
            }
        }
    }
    
}

