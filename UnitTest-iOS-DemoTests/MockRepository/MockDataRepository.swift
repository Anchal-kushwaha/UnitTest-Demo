//
//  MockDataRepository.swift
//  UnitTest-iOS-DemoTests
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import Foundation
@testable import UnitTest_iOS_Demo

class MockDataRepository: DataRepositoryProtocol {
    
    var apiCalled = false
    var id: Int = 0
    var isInvalid: Bool = false
    var error = ""
   
    
    
    func fetchReferralId() async throws -> Int {
        if isInvalid {
            apiCalled = false
            if id == -1 {
                error = ReferralError.invalidError.rawValue
                throw ReferralError.invalidError
            } else {
                error = ReferralError.networkError.rawValue
                throw ReferralError.networkError
            }
        } else {
            apiCalled = true
            id = 1
        }
        return id
    }
    
    func setInValidMockId() {
        if isInvalid {
            id = -1
        }
    }
}

