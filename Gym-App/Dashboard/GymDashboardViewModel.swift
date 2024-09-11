//
//  GymDashboardViewModel.swift
//  Gym-App
//
//  Created by Anjal Maharjan on 11/09/2024.
//

import SwiftUI

final class GymDashboardViewModel: ObservableObject {
	
	
	
	let gradient = LinearGradient(
		gradient: Gradient(stops: [
			.init(color: .black, location: 0),
			.init(color: .clear, location: 1)
		]),
		startPoint: .bottom,
		endPoint: .top
	)
	
	var newProgramSet : Set<NewProgramViewModel> = [
		
		NewProgramViewModel(image: "gym_banner", workoutCategory: "Upper Body", workoutDesc: "Simple chest workout only\n5 mins"),
		NewProgramViewModel(image: "gym_banner", workoutCategory: "Upper Body", workoutDesc: "Simple chest workout only\n5 mins"),
		NewProgramViewModel(image: "gym_banner", workoutCategory: "Upper Body", workoutDesc: "Simple chest workout only\n5 mins"),
		NewProgramViewModel(image: "gym_banner", workoutCategory: "Upper Body", workoutDesc: "Simple chest workout only\n5 mins")
	]
	
	var categoryList : [String]  = [
		"All Type",
		"Upper Body",
		"Lower Body",
		"Chest",
		"Legs"
	] {
		didSet{
			isPressed = false
		}
	}
	
	@Published var isPressed = false
}


