//
//  ListContactCleanModels.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//  Copyright (c) 2022 ___ORGANIZATIONNAME___. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so
//  you can apply clean architecture to your iOS and Mac projects,
//  see http://clean-swift.com
//

import UIKit

class ListContactCleanViewModel {
    var contactList: [ContactView] = []
    
    init(_ response: [Contact]) {
        response.forEach { (contact) in
            var image: UIImage?
            if let urlPhoto = URL(string: contact.photoURL) {
                do {
                    let data = try Data(contentsOf: urlPhoto)
                    image = UIImage(data: data)
                } catch {
                    return
                }
            }
            guard let imageFinal = image else { return }
            let newContact: ContactView = ContactView(name: contact.name, image: imageFinal)
            self.contactList.append(newContact)
        }
    }
}

struct ContactView {
    var name: String
    var image: UIImage
}

struct Contact: Codable {
    var id: Int
    var name: String
    var photoURL: String
}
