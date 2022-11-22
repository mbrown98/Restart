//
//  OnboardingView.swift
//  Restart
//
//  Created by Matthew Brown on 11/22/22.
//

import SwiftUI

struct OnboardingView: View {
    // this true value will only be added to the property when the program does not find the ONBOARDING key in app storage
    @AppStorage("onboarding") var isOnboardingViewActive: Bool = true
    var body: some View {
        VStack(spacing: 20) {
            Text("Onboarding")
                .font(.largeTitle)
            
            Button(action: {
                isOnboardingViewActive = false
            }) {
                Text("Start")
            }
        }
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
