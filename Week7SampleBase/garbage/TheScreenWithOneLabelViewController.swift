//
//  TheScreenWithOneLabelViewController.swift
//  garbage
//
//  Created by mobiledev on 13/4/21.
//

import UIKit

class TheScreenWithOneLabelViewController: UIViewController //secondviewcontroller
{
    
    var someVariable:String!
    
    var delegate : CharacterRecieverDelegate!

    @IBOutlet weak var myCoolLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        myCoolLabel.text = someVariable//"Blah"
    }
    
    @IBAction func btnElfPressed(_ sender: Any) {
        delegate.receiveData("You selected elf")
        //we could trigger a "go back" here if we liked
    }
    
    @IBAction func btnHumanPressed(_ sender: Any) {
        delegate.receiveData("You selected human")
        //we could trigger a "go back" here if we liked
    }
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    

}
