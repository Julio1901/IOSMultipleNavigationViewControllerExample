//
//  ViewControllerBlue.swift
//  MultipleNavigationControllerExample
//
//  Created by Julio Cesar  on 17/06/22.
//

import UIKit

class ViewControllerBlue: UIViewController {

    let buttonGoToPinkScreen: UIButton = {
        let button = UIButton(frame: CGRect(x: 0,y: 0,width: 100, height: 100))
        button.setTitle("Go to pink Screen", for: .normal)
        button.setTitleColor( .black, for: .normal)
        return button
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = .blue
        view.addSubview(buttonGoToPinkScreen)
        buttonGoToPinkScreen.center = view.center
        buttonGoToPinkScreen.addTarget(self, action: #selector(GoToPinkScreen), for: .touchUpInside)
        
            }
    

 
    @IBAction func GoToPinkScreen(_ sender: UIButton) {
        navigationController?.pushViewController(ViewControllerPink(), animated: true)
    
    }
    
}
