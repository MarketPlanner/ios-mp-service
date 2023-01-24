//
//  ServiceError.swift
//  iOS Concurrency
//
//  Created by Elias Ferreira on 10/01/23.
//

import Foundation

public enum CSError {
    case invalidURL
    case invalidResponseStatus
    case dataTaskError(String?)
    case corruptData
    case decodingError(String)
    case encodingError
}

extension CSError: LocalizedError {
    public var errorDescription: String? {
        switch self {
        case .invalidURL:
            return NSLocalizedString("The url is invalid", comment: "")
        case .encodingError:
            return NSLocalizedString("The encoder could not encode object", comment: "")
        case .invalidResponseStatus:
            return NSLocalizedString("The API faild to issue a valid response", comment: "")
        case .dataTaskError(let localizedDescription):
            return localizedDescription
        case .corruptData:
            return NSLocalizedString("The data provaided apears to be corrupted", comment: "")
        case .decodingError(let localizedDescription):
            return localizedDescription
        }
    }
}
