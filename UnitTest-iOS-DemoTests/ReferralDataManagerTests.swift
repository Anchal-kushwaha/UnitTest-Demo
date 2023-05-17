//
//  ReferralDataManagerTests.swift
//  UnitTest-iOS-DemoTests
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import XCTest
@testable import UnitTest_iOS_Demo

class ReferralDataManagerTests: XCTestCase {
    var sut: ReferralDataManager!
    var mockRepository: MockDataRepository!
    
    override func setUp() {
        super.setUp()
        mockRepository = MockDataRepository()
        sut = ReferralDataManager(repository: mockRepository)
    }
    
    func test_if_fetch_referral_id_is_invoked() async throws {
        _ = try await sut.getReferralId()

        XCTAssertTrue(mockRepository.apiCalled)
    }
    
    func test_fetchReferral_whenSuccessful_shouldReturnId() async throws {
        mockRepository.apiCalled = true
        
        _ = try await sut.getReferralId()
        
        XCTAssertEqual(1, sut.referralId)
    }
   
    func test_fetchReferral_whenFail_shouldReturnError() async throws {
        mockRepository.isInvalid = true
        
        _ = try await sut.getReferralId()
        
        XCTAssertEqual("networkError", (mockRepository.error))
    }
    
    func test_fetchReferral_whenReturnInvalidId_shouldThrowError() async throws {
        mockRepository.isInvalid = true
        mockRepository.setInValidMockId()
        
        _ = try await sut.getReferralId()
        
        XCTAssertEqual("invalidError", (mockRepository.error))
    }
}
