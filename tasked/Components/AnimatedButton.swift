//
//  AnimatedButton.swift
//  tasked
//
//  Created by Zheer Barzan on 7/11/24.
//
import SwiftUI

struct AnimatedButton: View {
    @Binding var animate: Bool

    var body: some View {
        NavigationLink(destination: AddView(),
                       label: {
            Text("Add something new")
                .foregroundColor(.white)
                .font(.headline)
                .frame(height: 55)
                .frame(maxWidth: .infinity)
                .background(animate ? Color.red : Color.accentColor)
                .cornerRadius(10)
        })
        .padding(.horizontal, animate ? 30 : 50)
        .shadow(
            color: animate ? Color.red.opacity(0.7) : Color.accentColor.opacity(0.7),
            radius: animate ? 30 : 10,
            x: 0,
            y: animate ? 50 : 30
        )
        .scaleEffect(animate ? 1.2 : 1.0)
        .offset(y: animate ? -7 : 0)
    }
    
    
}
