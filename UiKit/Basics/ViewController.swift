//
//  ViewController.swift
//  UiKit
//
//  Created by ADIL RAMZAN on 07/08/2025.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    @IBOutlet weak var greetingBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = .purple
        //greetingLabel.text = "Hello, World!"
        //greet("Adil")
        
    }
    
    func greet(_ name: String) {
        greetingLabel.text = "Hello, \(name)!"
    }
    
    var isLightMode = true
    @IBAction func greetingBtnTap(_ sender: Any) {
        print("Button Tapped")
        greet("Adil")
        
        if isLightMode {
            view.backgroundColor = .white
        } else {
            view.backgroundColor = .purple
        }

        // flip the flag so next tap changes it
        isLightMode.toggle()
    }
    
    
}

//#Preview {
//    ViewController()
//}
