//
//  GridViewController.swift
//  UiKit
//
//  Created by ADIL RAMZAN on 09/08/2025.
//

import UIKit

struct Framework {
    let imageName: String
    let title: String
}

final class GridViewController: UIViewController {
    
    // MARK: - Data Source
    private let frameworks: [Framework] = [
        Framework(imageName: "app-clip", title: "App Clips"),
        Framework(imageName: "arkit", title: "ARKit"),
        Framework(imageName: "carplay", title: "CarPlay"),
        Framework(imageName: "catalyst", title: "Catalyst"),
        Framework(imageName: "classkit", title: "ClassKit"),
        Framework(imageName: "cloudkit", title: "CloudKit"),
        Framework(imageName: "coreml", title: "Core ML"),
        Framework(imageName: "healthkit", title: "HealthKit"),
        Framework(imageName: "metal", title: "Metal"),
        Framework(imageName: "sf-symbols", title: "SF Symbols"),
        Framework(imageName: "sirikit", title: "SiriKit"),
        Framework(imageName: "spritekit", title: "SpriteKit"),
        Framework(imageName: "swiftui", title: "SwiftUI"),
        Framework(imageName: "test-flight", title: "Test Flight"),
        Framework(imageName: "wallet", title: "Wallet"),
        Framework(imageName: "sirikit", title: "SiriKit"),
        Framework(imageName: "spritekit", title: "SpriteKit"),
        Framework(imageName: "swiftui", title: "SwiftUI"),
        Framework(imageName: "test-flight", title: "Test Flight"),
        Framework(imageName: "wallet", title: "Wallet"),
        Framework(imageName: "widgetkit", title: "WidgetKit")
    ]
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        buildGrid()
    }
    
    // MARK: - UI Setup
    private func setupUI() {
        view.backgroundColor = .systemBackground
        title = "Frameworks"
    }
    
    private func buildGrid() {
        let scrollView = UIScrollView()
        scrollView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(scrollView)
        
        NSLayoutConstraint.activate([
            scrollView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            scrollView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
        let mainStack = UIStackView()
        mainStack.axis = .vertical
        mainStack.spacing = 16
        mainStack.translatesAutoresizingMaskIntoConstraints = false
        scrollView.addSubview(mainStack)
        
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: scrollView.topAnchor, constant: 16),
            mainStack.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor, constant: 16),
            mainStack.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor, constant: -16),
            mainStack.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor, constant: -16),
            mainStack.widthAnchor.constraint(equalTo: scrollView.widthAnchor, constant: -32)
        ])
        
        let columns = 3
        var index = 0
        
        while index < frameworks.count {
            let rowStack = UIStackView()
            rowStack.axis = .horizontal
            rowStack.distribution = .fillEqually
            rowStack.spacing = 16
            
            for _ in 0..<columns {
                if index < frameworks.count {
                    rowStack.addArrangedSubview(createFrameworkView(frameworks[index]))
                } else {
                    rowStack.addArrangedSubview(UIView())
                }
                index += 1
            }
            
            mainStack.addArrangedSubview(rowStack)
        }
    }
    
    // MARK: - Helper
    private func createFrameworkView(_ framework: Framework) -> UIStackView {
        let columnStack = UIStackView()
        columnStack.axis = .vertical
        columnStack.alignment = .center
        columnStack.spacing = 8
        
        let imageView = UIImageView()
        
        if let image = UIImage(named: framework.imageName) {
            imageView.image = image
        } else {
            imageView.image = UIImage(systemName: "exclamationmark.triangle") // Fallback
            imageView.tintColor = .systemRed
            print("⚠️ Missing image asset: \(framework.imageName)")
        }
        
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        
        let titleLabel = UILabel()
        titleLabel.text = framework.title
        titleLabel.font = .systemFont(ofSize: 14, weight: .medium)
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 0
        
        columnStack.addArrangedSubview(imageView)
        columnStack.addArrangedSubview(titleLabel)
        
        return columnStack
    }
}

#Preview {
    UINavigationController(rootViewController: GridViewController())
}
