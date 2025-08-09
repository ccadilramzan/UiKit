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
        GridViewController().viewDidLoad()
        // Do any additional setup after loading the view.
        //view.backgroundColor = .purple
        //greetingLabel.text = "Hello, World!"
        //greet("Adil")
        //greetingLabel.textAlignment = .center
        //greetingLabel.font = .systemFont(ofSize: 30, weight: .bold)
        
    }
    
//    func greet(_ name: String) {
//        greetingLabel.text = "Hello, \(name)!"
//    }
//    
//    var isLightMode = true
//    func updateGreetingLabel(text: String, textColor: UIColor) {
//        greetingLabel.text = text
//        greetingLabel.textColor = textColor
//        greetingLabel.textAlignment = .center
//        greetingLabel.font = .systemFont(ofSize: 30, weight: .bold)
//    }
//
//    @IBAction func greetingBtnTap(_ sender: Any) {
//        greet("Adil")
//        
//        if isLightMode {
//            view.backgroundColor = .white
//            updateGreetingLabel(text: "Light Mode", textColor: .black)
//        } else {
//            view.backgroundColor = .purple
//            updateGreetingLabel(text: "Dark Mode", textColor: .white)
//        }
//        isLightMode.toggle()
//    }

}

//#Preview {
//    ViewController()
//}
