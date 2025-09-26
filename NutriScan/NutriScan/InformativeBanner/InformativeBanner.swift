//
//  InformativeBanner.swift
//  NutriScan
//
//  Created by Rapha Vidal on 26/09/25.
//
import UIKit

class InformativeBanner: UIView {
    
    // MARK: - UI Components
    private let informationLabel: UILabel = {
        let label = UILabel()
        label.text = "INFORMAÇÕES"
        label.font = .systemFont(ofSize: 10, weight: .semibold)
        label.textColor = .primaryColor2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private var titleLabel: UILabel = {
       let label = UILabel()
        label.text = "Os prós e contras\ndo Fast Food"
        label.font = .systemFont(ofSize: 17, weight: .bold)
        label.textColor = .neutralColor1
        label.numberOfLines = 2
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let readMoreButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Leia na íntegra", for: .normal)
        button.setTitleColor(.secondaryColor2, for: .normal)
        button.backgroundColor = .primaryColor2
        button.layer.cornerRadius = 12
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()

    private let burgerImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "burgerImage")
        imageView.contentMode = .scaleAspectFit
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    // MARK: - Initializers
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setupView()
    }
    
    // MARK: - Setup Methods

    private func setupView() {
        backgroundColor = UIColor(red: 255/255, green: 245/255, blue: 236/255, alpha: 1)
        layer.cornerRadius = 20
        clipsToBounds = true

        addSubview(informationLabel)
        addSubview(titleLabel)
        addSubview(readMoreButton)
        addSubview(burgerImageView)

        setupConstraints()
    }

    private func setupConstraints() {
        // Constraints do "INFORMAÇÕES"
        NSLayoutConstraint.activate([
            informationLabel.topAnchor.constraint(equalTo: topAnchor, constant: 31),
            informationLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32)
        ])

        // Constraints do título
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: informationLabel.bottomAnchor, constant: 4),
            titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            titleLabel.trailingAnchor.constraint(equalTo: burgerImageView.leadingAnchor, constant: -19)
        ])

        // Constraints do botão
        NSLayoutConstraint.activate([
            readMoreButton.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            readMoreButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            readMoreButton.widthAnchor.constraint(equalToConstant: 110),
            readMoreButton.heightAnchor.constraint(equalToConstant: 40)
        ])

        // Constraints da imagem do hambúrguer
        NSLayoutConstraint.activate([
            burgerImageView.topAnchor.constraint(equalTo: topAnchor),
            burgerImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            burgerImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            burgerImageView.widthAnchor.constraint(equalTo: widthAnchor, multiplier: 0.4)
        ])
    }
}
