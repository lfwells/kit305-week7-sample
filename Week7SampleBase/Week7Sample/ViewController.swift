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
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let cookie : Dog = Dog()
        cookie.bark()
        cookie.walk()
        cookie.name()
        
        let frank : Animal = Cat()
        frank.walk()
        frank.name()
        //frank.bark() //animal has no member bark()
        
        
        if let frankTheDog = frank as? Dog
        {
            frankTheDog.bark()
        }
        else
        {
            print("error: frank wasn't a dog")
        }
        
        //the same, but more verbose
        let convertedFrank = frank as? Dog
        if let frankTheDog = convertedFrank
        {
            frankTheDog.bark()
        }
        //frankTheDog.bark() //outside of scope error
        
        //don't do this in swift (but is common in kotlin and java)
        if (convertedFrank != nil)
        {
            convertedFrank!.bark()
        }
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "CharacterSelect")
        {
            (segue.destination as! TheScreenWithOneLabelViewController).delegate = self
        }
    }
    /*
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "CharacterSelect")
        {
            
            //class UIViewController {}
            //class TheScreenWithOneLabelViewCntroller : UIViewController {
            //    var someVariable : String
            //}
            //(segue.destination as! TheScreenWithOneLabelViewController).someVariable = "hello"
            
            if let screenTwo = segue.destination as?  TheScreenWithOneLabelViewController
            {
                screenTwo.someVariable = "hello!"
            }
        }
    }
    
    
    
    
    
    */
    
    
    
    
    
    
}

