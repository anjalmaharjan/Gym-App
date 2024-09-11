//
//  GymDescriptionTextView.swift
//  Gym-App
//
//  Created by Anjal Maharjan on 10/09/2024.
//

import SwiftUI


struct GymDescriptionTextView : View{
	let desc : String
	let bottomPadding: Int
	var body: some View{
		Text(desc)
			.font(.system(size: 18,weight: .regular))
			.foregroundColor(.white)
			.opacity(0.8)
			.padding(.bottom,CGFloat(bottomPadding))
	}
}

#Preview {
	GymDescriptionTextView(desc: "" ,bottomPadding: 18 )
}
