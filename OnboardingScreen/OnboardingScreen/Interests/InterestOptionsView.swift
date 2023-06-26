//
//  InterestOptionsView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct InterestOptionsView: View {
    @Binding var selectedTab: Int
    let screen = Screen()
    var body: some View {
        ZStack(alignment: .topTrailing) {

                VStack(alignment: .center, spacing: screen.screenSize.height*0.05) {
                    Text("Let’s get started by \npicking some interests.")
                        .font(.system(size: 40, weight: .bold))
                        .multilineTextAlignment(.center)
                        .frame( height: 100)
                    Text("Alright, let's pick something we're interested \nin and get started!")
                        .frame( height: 60)
                    VStack(spacing: 16) {
                        HStack(spacing: 16) {
                            Image("interestgaming")
                            Image("interestfashion")
                        }
                        HStack(spacing: 16) {
                            Image("interestmusic")
                            Image("interestreading")
                        }
                    }

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
                        .padding(.top, 16)
                }
                .multilineTextAlignment(.center)
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
                Text("Step 4 of 4")
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
