//
//  NetworkCases.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//

import Foundation

enum NetworkResponse: Error {
    case success
    case authenticationError
    case badRequest 
    case outdated 
    case failed 
    case noData 
    case unableToDecode 
}


