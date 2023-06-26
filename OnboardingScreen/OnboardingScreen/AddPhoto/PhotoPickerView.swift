//
//  PhotoPickerView.swift
//  OnboardingScreen
//
//  Created by AMALITECH MACBOOK on 16/06/2023.
//

import SwiftUI

struct PhotoPickerView: View {

    @Binding var selectedTab: Int
    let screen = Screen()
    @State private var isAddImage: Bool = false

    var body: some View {

        ZStack(alignment: .topTrailing) {

            VStack(alignment: .center, spacing: 40) {

                VStack(alignment: .center, spacing: 40) {

                    Text("Add Photo")
                        .font(.system(size: 40, weight: .bold))

                    Text("Add a photo so other members know who you are.")

                    Image(isAddImage ? "colorImage": "imageplaceholder")
                        .cornerRadius(20)

                    Spacer()

                    Button {
                        if isAddImage {
                            selectedTab+=1
                        } else {
                            isAddImage.toggle()
                        }
                    } label: {
                        Text(isAddImage ? "Continue": "Upload a photo")
                    }.frame(maxWidth: screen.screenSize.width*0.2)
                        .padding(.vertical, 12)
                        .foregroundColor(.white)
                        .background(Color("ColorBlueBG"))
                        .overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color("ColorBlueBG"), lineWidth: 1)
                        )
                    if !isAddImage {
                        Button {
                            selectedTab+=1
                    } label: {
                        Text("Skip")
                    }
                }
                }
                .frame(height: screen.screenSize.height*0.70)
            }
            .padding(.top, 40)
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
                Text("Step 2 of 4")
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
