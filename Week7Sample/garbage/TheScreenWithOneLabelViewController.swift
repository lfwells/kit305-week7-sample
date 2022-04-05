//
//  TheScreenWithOneLabelViewController.swift
//  garbage
//
//  Created by mobiledev on 13/4/21.
//

import UIKit

class TheScreenWithOneLabelViewController: UIViewController //secondviewcontroller
{
    
    var delegate : CharacterRecieverDelegate!

    @IBOutlet weak var myCoolLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func btnElfPressed(_ sender: Any) {
        delegate.receiveData("You selected elf")
        //we could trigger a "go back" here if we liked
    }
    
    @IBAction func btnHumanPressed(_ sender: Any) {
        delegate.receiveData("You selected human")
        //we could trigger a "go back" here if we liked
    }

}
