//
//  LeagueVC.swift
//  app-swoosh
//
//  Created by Hazem Mohamed Magdy on 11/21/17.
//  Copyright © 2017 Rana. All rights reserved.
//

import UIKit

class LeagueVC: UIViewController {

    @IBOutlet weak var nextBtn: BorderButton!
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        player = Player()
    }
    
    @IBAction func onMensBtnPressed(_ sender: Any) {
        setPlayerData(desiredLeage: .men)
    }
    
    @IBAction func onWomenBtnPressed(_ sender: Any) {
        setPlayerData(desiredLeage: .women)
    }
    
    @IBAction func onCoedBtnPressed(_ sender: Any) {
        setPlayerData(desiredLeage: .coed)
    }
    
    func setPlayerData(desiredLeage: DesiredLeague) {
        player.desiredLeague = desiredLeage
        print(player.desiredLeague!)
        
        nextBtn.isEnabled = true
    }
    
    @IBAction func onNextBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: "skillVCSegue", sender: self)
    }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
   

}
