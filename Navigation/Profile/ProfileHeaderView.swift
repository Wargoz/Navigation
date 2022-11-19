//
//  ProfileHeadReview.swift
//  Navigation
//
//  Created by Александр Варганов on 19.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private lazy var profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "CatPicture")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 50
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var statusLabel: UILabel = {
        let label = UILabel()
        label.text = "Hipster cat"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 18)
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var textField: UITextField = {
        let text = UITextField()
        text.backgroundColor = .clear
        let atrributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 14)]
        text.attributedPlaceholder = NSAttributedString(string: "Waiting for something.", attributes: atrributes)
        text.translatesAutoresizingMaskIntoConstraints = false
        return text
    }()
    
    private lazy var buttonText: UIButton = {
        let button = UIButton ()
        button.setTitle("Show Status", for: .normal)
        button.backgroundColor = .blue
        button.titleLabel?.textColor = .white
        button.layer.cornerRadius = 4
        button.clipsToBounds = true
        button.translatesAutoresizingMaskIntoConstraints = false
        button.addTarget(self, action: #selector(showStatus), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .gray
        addSubview(profileImage)
        addSubview(statusLabel)
        addSubview(textField)
        addSubview(buttonText)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            profileImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            profileImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            profileImage.widthAnchor.constraint(equalToConstant: 100),
            profileImage.heightAnchor.constraint(equalToConstant: 100),
            
            statusLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            statusLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 27),
            statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            statusLabel.heightAnchor.constraint(equalToConstant: 50),
            
            textField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor),
            textField.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 27),
            textField.rightAnchor.constraint(equalTo: self.rightAnchor),
            textField.heightAnchor.constraint(equalToConstant: 50),
            
            buttonText.topAnchor.constraint(equalTo: profileImage.bottomAnchor, constant: 16),
            buttonText.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            buttonText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            buttonText.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
    
    @objc private func showStatus() {
        print(textField.text!)
    }
}
