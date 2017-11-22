//
//  SkillVC.swift
//  app-swoosh
//
//  Created by Hazem Mohamed Magdy on 11/21/17.
//  Copyright © 2017 Rana. All rights reserved.
//

import UIKit

class SkillVC: UIViewController {

    var player: Player!
    @IBOutlet weak var finishBtn: BorderButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        print(player.desiredLeague!)
        // Do any additional setup after loading the view.
    }
    
    @IBAction func beginnerBtnPressed(_ sender: Any) {
        setPlayerProffLevel(level: .beginner)
    }
    
    @IBAction func ballerBtnPressed(_ sender: Any) {
        setPlayerProffLevel(level: .baller)
    }
    
    @IBAction func finishBtnPressed(_ sender: Any) {
    }
    
    func setPlayerProffLevel(level: ProffLevel) {
        player.profficiencyLevel = level
        print(player.profficiencyLevel!)
        
        finishBtn.isEnabled = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
