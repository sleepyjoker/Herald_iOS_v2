//
//  MainNavigationController.swift
//  Hearld_iOS_v2
//
//  Created by Nathan on 23/10/2017.
//  Copyright © 2017 Nathan. All rights reserved.
//

import UIKit
import SnapKit

class MainNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func getHeight() -> CGFloat{
        return navigationBar.frame.height
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
