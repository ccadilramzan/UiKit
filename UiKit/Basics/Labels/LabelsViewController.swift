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
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // Delay before moving to GridViewController
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            let gridVC = GridViewController()
            gridVC.modalTransitionStyle = .crossDissolve
            gridVC.modalPresentationStyle = .fullScreen
            
            // Smooth fade transition
            if let window = UIApplication.shared.connectedScenes
                .compactMap({ ($0 as? UIWindowScene)?.keyWindow }).first {
                UIView.transition(with: window,
                                  duration: 0.5,
                                  options: .transitionCrossDissolve,
                                  animations: {
                    window.rootViewController = gridVC
                })
            }
        }
    }
}


#Preview {
    LabelsViewController()
}
