//
//  ViewController.swift
//  MultipleNavigationControllerExample
//
//  Created by Julio Cesar  on 17/06/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    
    //Default horizontal navigation
    @IBAction func GoToSGreenScreen(_ sender: UIButton) {
        navigationController?.pushViewController(ViewControllerGreen(), animated: true)
    }
    
    
    //Vertical presentation screen
    @IBAction func GoToYellowScreen(_ sender: UIButton) {
        self.present(ViewControllerYellow(), animated: true){
            //Make changes here if has necessary
        }
        
    }
    
    
    
    @IBAction func GoToBlueScreenWithUiViewController(_ sender: UIButton) {
        self.present(UINavigationController(rootViewController: ViewControllerBlue()), animated: true)
        
    
    }
    
    
    
}

