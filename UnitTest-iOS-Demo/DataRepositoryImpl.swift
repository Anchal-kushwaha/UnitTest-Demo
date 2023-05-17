//
//  DataRepositoryImpl.swift
//  UnitTest-iOS-Demo
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import Foundation

class DataRepositoryImpl: DataRepositoryProtocol {
    static let shared = DataRepositoryImpl()
    
    func fetchReferralId() async throws -> Int {
        //Implementation of api.It can fetch data from database or urlsession.
        return 1
    }
}
