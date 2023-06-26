//
//  SubscriptionView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct SubscriptionView: View {

    @Binding var selectedTab: Int
    @State var btn0 = true
    @State var btn1 = false
    @State var btn2 = false
    @State var btn3 = false
    let screen = Screen()
    
    var body: some View {

        ZStack(alignment: .topTrailing) {

           VStack(alignment: .center, spacing: screen.screenSize.height*0.05) {

               Text("Hey there! What brings you here?")
                   .frame(height: 100)
                   .multilineTextAlignment(.center)
                    .font(.system(size: 40, weight: .bold))

                Text("This will help us make great recommendations.")

                VStack(spacing: 32) {
                    capsuleButton(isSelected: btn0, label: "+  Social Interaction") {btn0.toggle()}
                    capsuleButton(isSelected: btn1, label: "+  Personal development") {btn1.toggle()}
                    capsuleButton(isSelected: btn2, label: "+  Entertainment and fun") {btn2.toggle()}
                    capsuleButton(isSelected: btn3, label: "+  Rewards and recognition") {btn3.toggle()}
                }
                Spacer()

                Button {
                    selectedTab+=1
                } label: {
                    Text("Continue")
                }.frame(maxWidth: screen.screenSize.width*0.3)
                    .padding(.vertical, 12)
                    .foregroundColor(.white)
                    .background(Color("ColorBlueBG"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("ColorBlueBG"), lineWidth: 1)
                    )
            }
            .frame(height: screen.screenSize.height*0.70)
            .padding(.top, 48)
            .font(.system(size: 22, weight: .regular))
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .foregroundColor(.black)

            HStack {

                Button {
                    selectedTab-=1
                } label: {
                    HStack {
                        Image(systemName: "arrow.left")
                        Text("Back")
                    }
                }.padding(.leading, 16)
                Spacer()
                Text("Step 3 of 4")
                Spacer()

                Button {
                    selectedTab=4
                } label: {
                    Text("Exit")
                        .foregroundColor(.black)
                        .font(.system(size: 22, weight: .regular))
                        .padding(.trailing, 40)
                }
            }.padding(.top, 0)
                .foregroundColor(.black)
                .font(.system(size: 22, weight: .regular))
        }
    }
}
