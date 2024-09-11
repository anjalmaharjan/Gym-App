//
//  GymTitleTextView.swift
//  Gym-App
//
//  Created by Anjal Maharjan on 10/09/2024.
//

import SwiftUI

struct GymTitleTextView: View {
	let title: String
	let titleSize: Int
    var body: some View {
		Text(title)
			.font(.system(size: CGFloat(titleSize),weight: .bold))
			.foregroundColor(.white)
			
    }
}

#Preview {
    GymTitleTextView(title: "", titleSize: 42)
}
