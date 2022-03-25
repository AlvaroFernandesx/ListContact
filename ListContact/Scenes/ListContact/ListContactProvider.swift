//
//  ListContactProvider.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//

import Foundation

class ListContactProvider: RequestProvider {
    
    var httpVerb: HTTPMethod {
        return .get
    }
    
}
