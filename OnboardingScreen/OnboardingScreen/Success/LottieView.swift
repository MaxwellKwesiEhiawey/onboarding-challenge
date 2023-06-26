//
//  LottieView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct LottieView: View {
    @Binding var selectedTab: Int
    let screen = Screen()
    var body: some View {
        ZStack(alignment: .topTrailing) {

          VStack(alignment: .center, spacing: screen.screenSize.height*0.05) {
                    Text("Woohoo!")
                        .font(.system(size: 40, weight: .bold))
                    Text("Hey there! Your registration is complete, get excited \nfor the ultimate quiz experience of your life. Let's do this!")
                        .frame( height: 80)
                    VStack {
                        Image("lottie")
                    }

                    Spacer()
                    Button {

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
                .multilineTextAlignment(.center)
                .frame(height: screen.screenSize.height*0.70)
            .padding(.top, 48)
            .font(.system(size: 22, weight: .regular))
            .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
            .foregroundColor(.black)
        }
    }
}
