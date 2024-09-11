//
//  GymGetStartedView.swift
//  Gym-App
//
//  Created by Anjal Maharjan on 10/09/2024.
//

import SwiftUI

struct GymGetStartedView: View {
    var body: some View {
		
		let gradient = LinearGradient(
			gradient: Gradient(stops: [
				.init(color: .black, location: 0),
				.init(color: .clear, location: 1)
			]),
			startPoint: .bottom,
			endPoint: .top
		)
		
		let title : String = "Let's Get Rid of Your Skinny Body"
		let desc : String = "Transform your physique and achieve your fitness goals with fitboost"
		
		NavigationView{
			Image("gym_banner")
			.resizable()
			.aspectRatio(contentMode: .fill)
			.frame(minWidth: 0, maxWidth: .infinity)
			.edgesIgnoringSafeArea(.all)
			.overlay(
				ZStack{
					gradient.edgesIgnoringSafeArea(.all)
					gradient.edgesIgnoringSafeArea(.all)
					
					VStack{
						Text("Rage")
							.font(.system(size: 32,weight: .bold))
							.foregroundColor(.orange)
						
						Spacer()
						
						GymTitleTextView(title: title, titleSize: 42)
							.padding(.bottom,14)
						
						GymDescriptionTextView(desc: desc,bottomPadding: 18)
						
						NavigationLink {
							GymDashboardView()
								.navigationBarBackButtonHidden(true)
						} label: {
							GymButtonView(name: "Get Started",buttonWidth: 350,textSize: 22)
						}
						.padding(.bottom,18)
						
						RegisterTextView()
					}
					.frame(maxWidth: .infinity, alignment: .leading)
					.padding(.horizontal,16)
				}
			)
    }
	}

}

#Preview {
    GymGetStartedView()
}


struct RegisterTextView: View {
	var body: some View {
		HStack{
			Text("Don't have an account?")
				.font(.system(size: 18,weight: .medium))
				.foregroundColor(.white)
				.opacity(0.9)
			
			GymHighlightedTextView(name: "Sign Up")
			
		}
	}
}

struct GymHighlightedTextView : View {
	let name: String
	var body: some View {
		Text(name)
			.font(.system(size: 18,weight: .bold))
			.foregroundColor(.orange)
			.opacity(0.9)
	}
}

