//
//  StartViewController.swift
//  LgnRND_LifeCycle_UIKit_iOS
//
//  Created by Oleh Poremskyy on 08.08.2024.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var switchINI: UISwitch!
    @IBOutlet weak var switchLC: UISwitch!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        switchINI.setOn(DebugPrint.printFlagB, animated: true)
        switchLC.setOn(DebugPrint.printFlagA, animated: true)
    }


    @IBAction func switchINITogle(_ sender: Any) {
        DebugPrint.printFlagB = switchINI.isOn
    }
    
    @IBAction func switchLCTogle(_ sender: Any) {
        DebugPrint.printFlagA = switchLC.isOn
    }
}
