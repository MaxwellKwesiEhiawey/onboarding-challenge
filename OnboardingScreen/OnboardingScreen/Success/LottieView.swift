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


        VStack(alignment: .center, spacing: screen.screenSize.height*0.15) {
            VStack {
                Text("Woohoo!")
                    .font(.system(size: 40, weight: .bold))
                Text("Hey there! Your registration is complete, get excited \nfor the ultimate quiz experience of your life. Let's do this!")
                    .frame( height: 80)
            }

            VStack(spacing: 56) {
                VStack {
                    Image("lottie")
                        .frame(height: screen.screenSize.height*0.20)

                }

                Button {
                        // selectedTab+=1 to used for other logics
                } label: {
                    Text("Continue")
                        .font(.system(size: 22, weight: .light))

                }.buttonStyle(NiceButtonStyle())
                    .padding(.vertical, 12)
                    .background(Color("ColorBlueBG"))
                    .overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color("ColorBlueBG"), lineWidth: 1)
                    )
            }
        }
          .multilineTextAlignment(.center)
          //.frame(height: screen.screenSize.height*0.90)
          //.padding(.top, 48)
          .font(.system(size: 22, weight: .regular))
          .frame(maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
          .foregroundColor(.black)

    }
}
