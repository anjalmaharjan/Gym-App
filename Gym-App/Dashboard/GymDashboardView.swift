	//
	//  GymDashboardView.swift
	//  Gym-App
	//
	//  Created by Anjal Maharjan on 10/09/2024.
	//

import SwiftUI

struct GymDashboardView: View {
	
	@StateObject var viewModel = GymDashboardViewModel()

	var body: some View {
		ZStack{
			Color.black
				.opacity(0.9)
				.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
			ScrollView{
				VStack(alignment: .leading){
					TopPhotoView()
						.padding(.horizontal,20)
					
					
					HStack{
						GymTitleTextView(title: "New Program", titleSize: 18)
						Spacer()
						Button{

						}label:{
							
							GymHighlightedTextView(name: "See all")
						}
					}
					.padding(EdgeInsets(top: 0, leading: 20, bottom: 15, trailing: 20))
					
					VStack{
						ScrollView(.horizontal) {
							HStack(spacing: 20){
								ForEach(Array(viewModel.newProgramSet)){ newProgram in
									ImageContainerView(image:newProgram.image)
										.overlay(
											ZStack{
												viewModel.gradient
												viewModel.gradient
												VStack(alignment: .leading){
													GymDescriptionTextView(desc: newProgram.workoutCategory, bottomPadding: 4)
													GymTitleTextView(title: newProgram.workoutDesc, titleSize: 22)
												}
												.frame(width: 280, height: 150, alignment: .bottomLeading)
												.padding(.leading,10)
											}
										)
										.frame(width: 300, height: 200)
										.clipped()
										.cornerRadius(12)
								}
							}
							.padding(.horizontal,20)
						}
					}
					
					HStack{
						GymTitleTextView(title: "Workout Programs", titleSize: 18)
						Spacer()
						Button{
						}label:{
							GymHighlightedTextView(name: "See all")
						}
					}
					.padding(EdgeInsets(top: 30, leading: 20, bottom: 20, trailing: 20))
					
					VStack{
						ScrollView(.horizontal) {
							HStack(spacing: 20){
								ForEach(viewModel.categoryList,id: \.self){
									category in
									Button{
										print("ispressed")
										viewModel.isPressed = true
									}label:{
										GymCategoryButtonView(name: category,buttonWidth: 150,textSize: 16,isPressed: $viewModel.isPressed)
											.padding(.bottom,20)
									}
								
								}
								
							}
							.padding(.horizontal,20)
						}
					}
					
					
					
					VStack(spacing: 20){
						ForEach(Array(viewModel.newProgramSet)){newProgram in
							ImageContainerView(image:newProgram.image)
								.overlay(
									ZStack{
										viewModel.gradient
										viewModel.gradient
										VStack(alignment: .leading){
											GymDescriptionTextView(desc: newProgram.workoutCategory, bottomPadding: 4)
											HStack{
												GymTitleTextView(title: newProgram.workoutDesc, titleSize: 24)
												GymButtonView(name: "Start Program",buttonWidth: 150,textSize: 16)
											}
										}
										.frame(width: 360, height: 150, alignment: .bottomLeading)
										.padding(.leading,40)
									}
								)
								.frame(width: .infinity, height: 200)
								.clipped()
								.cornerRadius(12)
						}
					}
					.padding(.horizontal,20)
					
					
					Spacer()
					
				}
			}
						
		}
		
	}
}

#Preview {
	GymDashboardView()
}

struct GymCategoryButtonView: View {
	let name : String
	let buttonWidth : CGFloat
	let textSize : CGFloat
	@Binding var isPressed : Bool
	var body: some View {
		Text(name)
			.font(.system(size: textSize,weight: .medium))
			.frame(width: buttonWidth,height: 50)
			.foregroundColor(.white)
			.background(isPressed ?   .orange : .teal)
			.cornerRadius(32)
	}
}

struct ImageContainerView: View {
	let image: String
	var body: some View {
		Image(image)
			.resizable()
			.aspectRatio(contentMode: .fill)
	}
}

struct TopPhotoView : View {
	
	
	var body: some View {
		HStack{
			Image("gym_banner")
				.resizable()
				.aspectRatio(contentMode: .fill)
				.frame(width: 50,height: 50)
				.clipShape(Circle())
				.padding(.trailing,10)
			
			VStack(alignment: .leading){
				GymDescriptionTextView(
					desc: "Welcome Back!",
					bottomPadding: 0)
				.padding(.top,8)
				GymTitleTextView(title: "Hero", titleSize: 22)
			}
			Spacer()
			
			Image(systemName: "magnifyingglass")
				.renderingMode(.original)
				.foregroundColor(.white)
				.padding(.trailing,8)
				.frame(width: 30,height: 30)
			
			Image(systemName: "bell")
				.renderingMode(.original)
				.foregroundColor(.white)
				.frame(width:30,height: 30)

			
		}
		.frame(height: 80)
		.padding(.bottom,30)	}
}


struct NewProgramViewModel : Hashable , Identifiable{
	
	let id = UUID()
	let image : String
	let workoutCategory : String
	let workoutDesc : String
	
	
}
