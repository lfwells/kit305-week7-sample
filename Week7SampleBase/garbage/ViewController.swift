//
//  ViewController.swift
//
//  Created by Lindsay Wells on 13/4/21.
//

import UIKit

class ViewController: UIViewController, CharacterRecieverDelegate //TODO: adopt the delegate protocol DONE
{
    //TODO: implement the delegate protocol DONE
    func recieveData(_ race: String) {
        print(race)
        btnRace.setTitle(race, for:UIControl.State.normal)
    }
    
    @IBOutlet weak var btnRace: UIButton!
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        if (segue.identifier == "CharacterSelect")
        {
            
            //TODO: cast the potentially nil destination DONE
            if let newScreen = segue.destination as? CharacterSelectScreen
            {
                newScreen.passingData = "hello from this screen"
                
                //TODO: set up (link) the delegate (i.e. make ourselves the delegate of the other screen) DONE
                newScreen.delegateToRegionalManager = self
            }
            
            
        }
    }
}
