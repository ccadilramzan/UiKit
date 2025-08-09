//
//  LabelsViewController.swift
//  UiKit
//
//  Created by ADIL RAMZAN on 09/08/2025.
//

import UIKit

class LabelsViewController: UIViewController {
    
    private var textLabel = UILabel()
    
    private var subtitleLabel: UILabel = {
        let label = UILabel()
        label.text = "Subtitle"
        label.font = .systemFont(ofSize: 17, weight: .medium)
        label.textColor = .secondaryLabel
        label.numberOfLines = 0
        return label
    }()
    
    private var imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "app-clip") // Add your image in Assets.xcassets
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        // Main text label
        textLabel.text = "Hello, World!"
        textLabel.font = .systemFont(ofSize: 36)
        
        // Add subviews
        view.addSubview(imageView)
        view.addSubview(subtitleLabel)
        view.addSubview(textLabel)
        
        // Disable autoresizing masks
        imageView.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        textLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Constraints
        NSLayoutConstraint.activate([
            // Image at top center
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 80),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 100),
            imageView.heightAnchor.constraint(equalToConstant: 100),
            
            // Subtitle below image
            subtitleLabel.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            subtitleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            // Main text label below subtitle
            textLabel.topAnchor.constraint(equalTo: subtitleLabel.bottomAnchor, constant: 8),
            textLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor)
        ])
    }
}

#Preview {
    LabelsViewController()
}
