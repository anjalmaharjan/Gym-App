//
//  GymButtonView.swift
//  Gym-App
//
//  Created by Anjal Maharjan on 10/09/2024.
//

import SwiftUI

struct GymButtonView: View {
	let name : String
	let buttonWidth : CGFloat
	let textSize : CGFloat
	var body: some View {
		Text(name)
			.font(.system(size: textSize,weight: .medium))
			.frame(width: buttonWidth,height: 50)
			.foregroundColor(.white)
			.background(.orange)
		.cornerRadius(32)
	}
}
#Preview {
    GymButtonView(name: "",buttonWidth: 350,textSize: 22)
}
