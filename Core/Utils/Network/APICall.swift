//
//  APICall.swift
//  Core
//
//  Created by Dimas Wicaksono on 24/01/22.
//

import Foundation

public struct API {
    static let baseUrl = "https://api.themoviedb.org/3/"
    public static let imageSource = "https://image.tmdb.org/t/p/original"
    public static var apiKey: String {
        get {
            guard let filePath = Bundle.main.path(forResource: "TMDB-Info", ofType: "plist") else {
                fatalError("Couldn't find file 'TMDB-Info.plist'.")
            }
            let plist = NSDictionary(contentsOfFile: filePath)
            guard let value = plist?.object(forKey: "API_KEY") as? String else {
                fatalError("Couldn't find key 'API_KEY' in 'TMDB-Info.plist'.")
            }
            return value
        }
    }
}

protocol Endpoint {
    var url: String { get }
}

public enum Endpoints {
    public enum Gets: Endpoint {
        case movies
        case movieDetail
        
        public var url: String {
            switch self {
            case .movies:
                return "\(API.baseUrl)movie/now_playing"
            case .movieDetail:
                return "\(API.baseUrl)movie/"
            }
        }
    }
}
