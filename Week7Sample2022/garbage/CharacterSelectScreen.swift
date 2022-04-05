//
//  TheScreenWithOneLabelViewController.swift
//
//  Created by Lindsay Wells on 13/4/21.
//

import UIKit

class CharacterSelectScreen: UIViewController //secondviewcontroller
{
    @IBOutlet var myLabel: UILabel!
    
    var passingData : String?
    
    override func viewDidLoad() {
        myLabel.text = passingData!
    }
    
    //TODO: define the delegate DONE
    var delegateToRegionalManager : CharacterRecieverDelegate!
    
    
    @IBAction func btnElfPressed(_ sender: Any) {
        //TODO: use the delegate here DONE
        delegateToRegionalManager.recieveData("Elf")
    }
    
    @IBAction func btnHumanPressed(_ sender: Any) {
        //TODO: use the delegate here DONE
        delegateToRegionalManager.recieveData("Human")
    }
    
    

}
