//
//  ContactCell.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//

import UIKit

class ContactCell: UITableViewCell {
    
    lazy var contactImage: UIImageView = {
        let imageView = UIImageView()
//        imageView.translatesAutoresizingMaskIntoConstraints = false
//        imageView.contentMode = .scaleAspectFit
//        imageView.clipsToBounds = true
//        imageView.layer.masksToBounds = false
//        imageView.layer.cornerRadius = 30
        
        imageView.layer.masksToBounds = false
        imageView.layer.cornerRadius = 40
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .white
        return imageView
    }()
    
    lazy var name: UILabel = {
        let label = UILabel()
        label.font = .configure(fontSize: 20, weight: .semibold)
        label.textColor = .gray
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureViews()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureViews()
    }
    
    private func configureViews() {
        contentView.addSubview(contactImage)
        contentView.addSubview(name)
        
        contactImage.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 15).isActive = true
        contactImage.centerYAnchor.constraint(equalTo: contentView.centerYAnchor).isActive = true
        contactImage.heightAnchor.constraint(equalToConstant: 80).isActive = true
        contactImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        
        name.leadingAnchor.constraint(equalTo: contactImage.trailingAnchor, constant: 16).isActive = true
        name.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -15).isActive = true
        name.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        name.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
    }
    
    func configureCell(_ contact: ContactView) {
        configureViews()
        self.contactImage.image = contact.image
        self.name.text = contact.name
    }
}

