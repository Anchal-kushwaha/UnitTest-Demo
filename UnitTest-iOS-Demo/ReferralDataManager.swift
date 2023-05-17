//
//  ReferralDataManager.swift
//  UnitTest-iOS-Demo
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import Foundation

class ReferralDataManager: ReferralDataManagerProtocol, ObservableObject {
    let repository: DataRepositoryProtocol
    static let shared = ReferralDataManager()
    
    @Published var referralId: Int?
    
    init(repository: DataRepositoryProtocol = DataRepositoryImpl.shared) {
        self.repository = repository
    }
    
    func getReferralId() async throws {
        do {
            referralId = try await repository.fetchReferralId()
        } catch ReferralError.invalidError {
            debugPrint("invalidError")
        } catch {
            debugPrint("networkError")
        }
    }
}
