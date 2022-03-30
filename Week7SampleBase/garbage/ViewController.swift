//
//  ViewController.swift
//
//  Created by Lindsay Wells on 13/4/21.
//

import UIKit

class ViewController: UIViewController //TODO: adopt the delegate protocol
{
    @IBOutlet weak var btnRace: UIButton!
    
    //TODO: implement the delegate protocol
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "CharacterSelect")
        {
            //TODO: cast the potentially nil destination
            
            //TODO: set up (link) the delegate (i.e. make ourselves the delegate of the other screen)
            
        }
    }

}
