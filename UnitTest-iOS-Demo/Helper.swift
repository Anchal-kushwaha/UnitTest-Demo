//
//  Helper.swift
//  UnitTest-iOS-Demo
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import Foundation

protocol ReferralDataManagerProtocol {
    func getReferralId() async throws
}

protocol DataRepositoryProtocol {
    func fetchReferralId() async throws -> Int
}

enum ReferralError: String, Error {
    case networkError
    case invalidError
}
