//
//  RequestProvider.swift
//  ListContact
//
//  Created by Álvaro Fernandes on 23/03/22.
//

import Foundation

public enum HTTPMethod: String {
    case get = "GET"
    case post = "POST"
    case put = "PUT"
    case patch = "PATCH"
    case delete = "DELETE"
}

protocol RequestProvider {
    var scheme: String { get }
    var host: String { get }
    var path: String { get }
    var httpVerb: HTTPMethod { get }
    var asURLRequest: URLRequest { get }
    var queryItems: [URLQueryItem] { get }
}

public enum EndPoint {
    case contact
}

extension RequestProvider {

    var httpVerb: HTTPMethod {
        return .get
    }
    
    var scheme: String {
        return "https"
    }

    var host: String {
        return "run.mocky.io"
    }
    
    var path: String {
        return "/v3/d26d86ec-fb82-48a7-9c73-69e2cb728070"
    }
    
    var queryItems: [URLQueryItem] {
        return []
    }
    
    var asURLRequest: URLRequest {
        
        var components = URLComponents()
                components.scheme = scheme
                components.host = host
                components.path = path
                components.queryItems = queryItems

        var request = URLRequest(url: components.url!)
        request.httpMethod = httpVerb.rawValue

        return request
    }
    
}
