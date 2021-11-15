//
//  InfoViewController.swift
//  WeekDayFinder
//
//  Created by jazeps.ivulis on 15/11/2021.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var appInfoLabel: UILabel!
    
    @IBOutlet weak var appDescLabel: UILabel!
    
    var infoText = String()

    override func viewDidLoad() {
        super.viewDidLoad()
        if !infoText.isEmpty {
            appDescLabel.text = infoText
        }

        // Do any additional setup after loading the view.
    }
    
    //MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "lorem" {
            let vc = segue.destination as! MoreInfoViewController
            vc.testText = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
        }
    }
}
