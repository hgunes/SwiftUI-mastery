//
//  HomeView.swift
//  Restart
//
//  Created by Harun Gunes on 07/08/2022.
//

import SwiftUI

struct HomeView: View {
    
    @AppStorage("onboarding") var isOnboardingViewActive = false
    
    var body: some View {
        VStack(spacing: 20) {
           
            // MARK: - Header
            
            Spacer()
            
            ZStack {
                
                CircleGroupView(shapeColor: .gray, shapeOpacity: 0.1)
                
                Image("character-2")
                    .resizable()
                    .scaledToFit()
                .padding()
            }
            
            // MARK: - Center
            
            Text("The time that leads to mastery is dependent on the intensity of our focus")
                .font(.system(.title3))
                .fontWeight(.light)
                .foregroundColor(.secondary)
                .multilineTextAlignment(.center)
                .padding()
            
            // MARK: - Footer
            
            Spacer()
            
            Button {
                isOnboardingViewActive.toggle()
            } label: {
                Image(systemName: "arrow.triangle.2.circlepath.circle.fill")
                    .imageScale(.large)
                
                Text("Restart")
                    .font(.system(.title3, design: .rounded))
                    .fontWeight(.bold)
                
            } //: BUTTON
            .buttonStyle(.borderedProminent)
            .buttonBorderShape(.capsule)
            .controlSize(.large)
        } //: VSTACK
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
