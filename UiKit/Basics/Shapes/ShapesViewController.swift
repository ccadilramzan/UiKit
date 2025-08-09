//
//  ShapesViewController.swift
//  UiKit
//
//  Created by ADIL RAMZAN on 09/08/2025.
//

import UIKit

class ShapesViewController: UIViewController {
    
    private var rect: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.layer.cornerRadius = 8
        return view
    }()
    
    private var circle = UIView()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(rect)
        rect.translatesAutoresizingMaskIntoConstraints = false
        rect.widthAnchor.constraint(equalToConstant: 100).isActive = true
        rect.heightAnchor.constraint(equalToConstant: 100).isActive = true
        rect.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        rect.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
       
            
        view.addSubview(circle)
        circle.backgroundColor = .red
        circle.translatesAutoresizingMaskIntoConstraints = false
        circle.widthAnchor.constraint(equalToConstant: 100).isActive = true
        circle.heightAnchor.constraint(equalToConstant: 100).isActive = true
        circle.topAnchor.constraint(equalTo: rect.bottomAnchor, constant: 20).isActive = true
        circle.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        //circle.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        circle.layer.cornerRadius = 100 / 2

        // Do any additional setup after loading the view.
    
        
    }

}

#Preview {
    ShapesViewController()
}
