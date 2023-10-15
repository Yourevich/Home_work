//
//  ViewController.swift
//  Hugging_compression_resistance_priorities
//
//  Created by Илья Зорин on 15.10.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private lazy var firstLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 50)
        label.backgroundColor = UIColor.systemCyan
        label.numberOfLines = 0
        label.text = "Easy Easy Easy Easy Easy Easy Easy Easy Easy Easy Easy Easy Easy Easy"
        return label
    }()
    
    private lazy var secondLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 50)
        label.backgroundColor = UIColor.systemPink
        label.numberOfLines = 0
        label.text = "Hard"
        return label
    }()
    
    
    private lazy var titleLabel: UILabel = {
        let label =  UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Product"
        label.backgroundColor = .green
        return label
    }()
    
    
    private lazy var discriptionLabel: UILabel = {
        let label =  UILabel()
        label.font = UIFont.systemFont(ofSize: 16, weight: .bold)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Apple Macbook Pro 2023 512 GB 13' + Case"
        label.backgroundColor = .orange
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupLabels()
        configureLabels()
        
    }
    
    private func setupLabels() {
        view.addSubview(firstLabel)
        view.addSubview(secondLabel)
        
        NSLayoutConstraint.activate([
            firstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            firstLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            firstLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor,constant: 100),
            firstLabel.bottomAnchor.constraint(equalTo: secondLabel.topAnchor),
            
            secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor),
            secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            secondLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor)
            
        ])
        
        
        //MARK:  - Hugging resistance priorities
        //Проиритет против расширения, чем выше тем меньше вероятность к расширеению. То есть сейчас у firstLabel, низкий приоритет против расширения и он расширяется, у SecondLabel наоборот
        
        firstLabel.setContentHuggingPriority(.defaultLow, for: .vertical)
        secondLabel.setContentHuggingPriority(.defaultHigh, for: .vertical)
        
    }
    
    
    private func configureLabels() {
        view.addSubview(titleLabel)
        view.addSubview(discriptionLabel)
        
        NSLayoutConstraint.activate([
            //Тайтл
            titleLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor,constant: 30),
            titleLabel.leadingAnchor.constraint(equalTo: view.layoutMarginsGuide.leadingAnchor, constant: 0),
            //Описание
            discriptionLabel.topAnchor.constraint(equalTo: view.layoutMarginsGuide.topAnchor,constant: 30),
            discriptionLabel.trailingAnchor.constraint(equalTo: view.layoutMarginsGuide.trailingAnchor,constant: 0),
            //Между лейблами
            discriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.trailingAnchor,constant: 0)
            
        ])
        
    
        //MARK: - Compression resistance priorities
        //Приоритет против сжатия, чем он выше, тем меньше вероятность что объект будет сжат. Сейчас у заголовка низкий приоритет и он сжимается, у описания высокий приоритет и его видно целиком. Если поменять значения то будет наоборот.
        titleLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        discriptionLabel.setContentCompressionResistancePriority(.defaultHigh, for: .horizontal)
        
        
    }
    
    
    
}




