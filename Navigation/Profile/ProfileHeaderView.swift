//
//  ProfileHeadReview.swift
//  Navigation
//
//  Created by Александр Варганов on 19.11.2022.
//

import UIKit

class ProfileHeaderView: UIView {
    
    private var status = ""
    
    private lazy var profileImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "CatPicture")
        imageView.contentMode = .scaleAspectFill
        imageView.layer.borderWidth = 3
        imageView.layer.borderColor = UIColor.white.cgColor
        imageView.layer.cornerRadius = 65
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    private lazy var profileNameLabel: UILabel = {
        let label = UILabel()
        label.text = "Hipster cat"
        label.textColor = .black
        label.font = .boldSystemFont(ofSize: 18)
        label.textAlignment = .left
        label.backgroundColor = .clear
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var statusLabel: UILabel = {
        let text = UILabel()
        text.backgroundColor = .clear
        text.text = "Waiting for something..."
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = UIColor.gray
        return text
    }()
    
    private lazy var statusLabelTextField: UITextField = {
        let text = UITextField()
        text.backgroundColor = .white
        let atrributes = [NSAttributedString.Key.font: UIFont.systemFont(ofSize: 15)]
        text.attributedPlaceholder = NSAttributedString(string: "Waiting for something.", attributes: atrributes)
        text.layer.borderColor = UIColor.black.cgColor
        text.layer.borderWidth = 1
        text.layer.cornerRadius = 12
        text.translatesAutoresizingMaskIntoConstraints = false
        text.textColor = UIColor.black
        text.addTarget(self, action: #selector(setStatus), for: .editingChanged)
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
        backgroundColor = .white
        addSubview(profileImage)
        addSubview(profileNameLabel)
        addSubview(statusLabel)
        addSubview(buttonText)
        addSubview(statusLabelTextField)
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        NSLayoutConstraint.activate([
            profileImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            profileImage.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 16),
            profileImage.widthAnchor.constraint(equalToConstant: 130),
            profileImage.heightAnchor.constraint(equalToConstant: 130),
            
            profileNameLabel.topAnchor.constraint(equalTo: self.safeAreaLayoutGuide.topAnchor, constant: 27),
            profileNameLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 10),
            profileNameLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            profileNameLabel.bottomAnchor.constraint(equalTo: profileImage.centerYAnchor),
            
//            textField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor),
            statusLabel.leftAnchor.constraint(equalTo: profileImage.rightAnchor, constant: 10),
            statusLabel.rightAnchor.constraint(equalTo: self.rightAnchor),
            statusLabel.topAnchor.constraint(equalTo: profileImage.centerYAnchor),
            statusLabel.bottomAnchor.constraint(equalTo: statusLabelTextField.topAnchor, constant: -10),
            
            buttonText.topAnchor.constraint(equalTo: statusLabelTextField.bottomAnchor, constant: 10),
            buttonText.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -16),
            buttonText.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 16),
            buttonText.heightAnchor.constraint(equalToConstant: 50),
            
            statusLabelTextField.topAnchor.constraint(equalTo: statusLabel.bottomAnchor, constant: 10),
            statusLabelTextField.heightAnchor.constraint(equalToConstant: 40),
            statusLabelTextField.leftAnchor.constraint(equalTo: statusLabel.leftAnchor),
            statusLabelTextField.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -10)

        ])
    }
    
    @objc private func setStatus(_ textField: UITextField) {
        status = statusLabelTextField.text!
    }
    
    @objc private func showStatus() {
        statusLabel.text = status
    }
}
