//
//  ContentView.swift
//  UnitTest-iOS-Demo
//
//  Created by Anchal Kushwaha on 03/05/23.
//

import SwiftUI

struct ContentView: View {
    
   @ObservedObject var referralDataManager: ReferralDataManager
    
    init(referralDataManager: ReferralDataManager = ReferralDataManager.shared) {
        self.referralDataManager = referralDataManager
    }
    var body: some View {
        Text("Unit Test demo \(referralDataManager.referralId ?? 0)")
            .padding()
            .onAppear {
                Task {
                    try await referralDataManager.getReferralId()
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
