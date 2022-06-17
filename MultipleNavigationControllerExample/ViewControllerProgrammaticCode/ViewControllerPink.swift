//
//  ViewControllerPink.swift
//  MultipleNavigationControllerExample
//
//  Created by Julio Cesar  on 17/06/22.
//

import UIKit

class ViewControllerPink: UIViewController {

    
    
    let returnToBlueScreen: UIButton = {
        let button = UIButton(frame: CGRect(x: 0,y: 0,width: 100, height: 100))
        button.setTitle("Go to blue Screen", for: .normal)
        button.setTitleColor( .black, for: .normal)
        return button
    }()
    
    
    let goToHomeScreen: UIButton = {
        let button = UIButton(frame: CGRect(x: 0,y: 0,width: 100, height: 100))
        button.setTitle("Go to home Screen", for: .normal)
        button.setTitleColor( .black, for: .normal)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemPink
        view.addSubview(returnToBlueScreen)
        view.addSubview(goToHomeScreen)
        
        returnToBlueScreen.center = view.center
        returnToBlueScreen.addTarget(self, action: #selector(ReturnToBlueScreen), for: .touchUpInside)
        
        goToHomeScreen.center = CGPoint(x: 100, y: 100)
        goToHomeScreen.addTarget(self, action: #selector(ReturnToHome) , for: .touchUpInside)
        
        
    }
    

   
    @IBAction func ReturnToBlueScreen(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    
    @IBAction func ReturnToHome(_ sender: UIButton) {
        navigationController?.dismiss(animated: true)
    }
    
}
